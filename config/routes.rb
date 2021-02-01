Rails.application.routes.draw do

  root 'parks#index'

  resources :hikers
  resources :trails
  resources :parks
  resources :reviews

  get "/signup", to: "hikers#new", as: signup
  post "/signup", to: "hikers#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# enoch lecture
# https://youtu.be/7u21R9T9vdQ?t=176