class Api::V1::UsersController < ApplicationController

  # GET api/v1/users/:id
def show
    @user=User.find(params[:id])
    render json:{user: @user}
end
 
def create
    @user=User.create(user_params)
    render json:{user: @user}
  
end

def update 
  @user=User.update(user_params)
  render json:{user: @user}
end

def destroy
  @user=User.delete(params[:id])
  render json:{user: @user}
end

#create, update, delete, index
 private
    def user_params
        params.require(:user).permit(:name, :email, :password, address: [:address_line1, :address_line2,:city, :province, :postal_code, :country])
      end
end