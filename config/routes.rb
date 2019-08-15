  Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
# PUT EVERYTHING BETWEEN THE NAMESPACES. THIS WILL MAKE OUR URL BEGIN WITH /api/v1
# PUT ALL CONTROLLERS IN API/V1 FOLDER
# class Api::V1::ExampleController



    end
end


end
