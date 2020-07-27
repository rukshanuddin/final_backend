Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :topics
      resources :links, except: :index do
        resources :comments, only: [:create, :update, :destroy]
      end
    end
  end

  post '/login', to: "sessions#create"
end