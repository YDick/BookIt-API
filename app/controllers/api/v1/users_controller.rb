class Api::V1::UsersController < ApplicationController
  # list all the methods that the user needs to be logged in to access
#  before_action :authentication_user, only[]

    def index
        @users = User.all
        render json: {status: 200, msg: "all users returned", users: @users}
    end

    def current
        render json: {current_user: current_user}
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            render json: {status: 200, msg: "new user created"}
        end
    end


  def show
      @user=User.find(params[:id])
      render json: {status: 200, user: @user}
  end

  private

    def user_params
        params.require(:user).permit(:name, :email, :password, address: [:address_line1, :address_line2,:city, :province, :postal_code, :country])
    end
end