Rails.application.routes.draw do
  root "chatroom#index"
  get "messages/create"
  get "login", to: "sessions#new"
  get "up" => "rails/health#show", as: :rails_health_check

  post "login", to: "sessions#create"
  post "message", to: "messages#create"

  delete "logout", to: "sessions#destroy"

  mount ActionCable.server, at: "/cable"
end
