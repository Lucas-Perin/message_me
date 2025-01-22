Rails.application.routes.draw do
  get "messages/create"
  root "chatroom#index"
  get "login", to: "sessions#new"
  get "up" => "rails/health#show", as: :rails_health_check
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  post "message", to: "messages#create"
end
