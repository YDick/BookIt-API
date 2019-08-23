class Api::V1::UsersController < ApplicationController
  # list all the methods that the user needs to be logged in to access
 before_action :authenticate_user, only:[:current, :update, :delete]

    # GET api/v1/users/
    def index
        @users = User.all
        render json: {status: 200, msg: "all users returned", users: @users}
    end

    # GET /api/v1/current
    def current
        render json: {status: 200, current_user: current_user}
    end


    # GET api/v1/users/:id
    def show
        @user=User.find(params[:id])
        render json:{status: 200, user: @user}
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
        # if @user == current_user
        User.update(user_params)
        render json:{status: 200, user: @user}
        # else render json:{status: 403}
        # end
    end

    # DELETE api/v1/users/:id
    def destroy
        @user=User.find(params[:id])
        # only current user can delete
        # if @user == current_user
            User.delete(params[:id])
            render json:{status: 200, user: @user}
        # else render json:{status: 403}
        # end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, address: [:address_line1, :address_line2,:city, :province, :postal_code, :country])
    end
end