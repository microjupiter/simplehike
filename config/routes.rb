Rails.application.routes.draw do
  root 'parks#index'
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  

  resources :trails do
    resources :reviews
  end
  resources :parks
  resources :reviews

  # get "/login", to: "sessions#new", as: "login"
  # post "/login", to: "sessions#create"

  # get "/parks/:id/reviews" to: "reviews#new"

  # delete "/logout", to: "sessions#destroy", as: "destroy_user_session"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# enoch lecture
# https://youtu.be/7u21R9T9vdQ?t=176