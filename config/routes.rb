Rails.application.routes.draw do
  get "home/index"
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  resources :learning_entries

  resources :users, only: [:new, :create]

  #language switch route
  get "/set_locale/:locale", to: "application#change_locale", as: :set_locale  

  root "learning_entries#index"
  
end
