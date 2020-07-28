Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :topics
      resources :links do
        resources :comments, only: [:index, :create, :update, :destroy]
      end
      resources :users, only: [:create, :update, :show]
    end
  end

  post '/login', to: "sessions#create"
end