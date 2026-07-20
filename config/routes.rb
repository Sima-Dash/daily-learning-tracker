Rails.application.routes.draw do
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  resources :learning_entries

  resources :users, only: [:new, :create]

  root "learning_entries#index"
  
end
