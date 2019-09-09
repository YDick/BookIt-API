class Api::V1::UsersController < ApplicationController
    respond_to(:html, :json)

  # list all the methods that the user needs to be logged in to access
 before_action :authenticate_user, only:[:current, :update, :delete]

    # GET api/v1/users/
    def index
        @users = User.all
        render json: {status: 200, msg: "all users returned", users: @users}
    end

    # GET /api/v1/current
    def current
        render json: {status: 200, current_user: current_user, gravatar: current_user.gravatar_url}
    end

    # send invite email
    # POST /api/v1/invite
    def invite
        @params = params[:user]
        respond_with do |format|
            UserMailer.with(user: @params).invite.deliver
            format.html 
            format.json { render json: {"hi": "hi"}, status: :created}
        end
    end


    # GET api/v1/users/:id
    def show
        @user=User.find(params[:id])
        render json:{status: 200, user: @user, gravatar: @user.gravatar_url}
    end
    
    # POST api/v1/users
    def create
        @user = User.new(user_params)
        if @user.save 
            render json: {status: 200, msg: "new user created", user: @user}
        else render json: @user.errors
        end
    end

    # PATCH api/v1/users/:id
    def update 
        @user=User.find(params[:id])
        # only current user can update
        if @user == current_user
            @user.update(user_params)
            render json:{status: 200, user: @user}
        else render json:{msg: 'must be current user to update'}
        end
    end

    # DELETE api/v1/users/:id
    def destroy
        @user=User.find(params[:id])
        # only current user can delete
        if @user == current_user
            @user.delete(params[:id])
            render json:{status: 200, user: @user}
        else render json:{msg: "must be current user to delete"}
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, address: [:address_line1, :address_line2,:city, :province, :postal_code, :country])
    end
end