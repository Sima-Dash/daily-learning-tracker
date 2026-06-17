Rails.application.routes.draw do

  root "learning_entries#index"

  get "/learning_entries", to: "learning_entries#index"

  get "/learning_entries/new", to: "learning_entries#new"
  
end
