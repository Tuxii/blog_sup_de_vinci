Rails.application.routes.draw do
  resources :articles do
    resources :likes, only: [:create], module: "articles"
  end

  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#show"

  get "/home", to: "home#show"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
end
