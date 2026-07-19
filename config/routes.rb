Rails.application.routes.draw do

  resources :learning_entries

  resources :users, only: [:new, :create]

  root "learning_entries#index"
  
end
