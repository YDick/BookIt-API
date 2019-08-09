class Api::V1::UsersController < ApplicationController
    has_many :book_clubs, as member
    has_many :book_clubs, as admin
def show
    @user=User.find(params[:id])
    render json:{user: @user}
end
    def user_params
        params.require(:user).permit(:name, :email, :password, address: [:address_line1, :address_line2,:city, :province, :postal_code, :country])
      end
end