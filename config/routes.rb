  Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :book_clubs
      # this route will return a json with the current user
      get '/current' => 'users#current';
      # post with the user password and email, get login token (JWT) back
      post 'user_token' => 'user_token#create'
      # send invite email
      post '/invite' => 'users#invite'


# PUT EVERYTHING BETWEEN THE NAMESPACES. THIS WILL MAKE OUR URL BEGIN WITH /api/v1
# PUT ALL CONTROLLERS IN API/V1 FOLDER
# class Api::V1::ExampleController
    end
end


end
