Rails.application.routes.draw do

  root "learning_entries#index"

  resources :learning_entries
  
end
