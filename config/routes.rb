Rails.application.routes.draw do
  root "chatroom#index"
  get "login", to: "sessions#new"
  get "up" => "rails/health#show", as: :rails_health_check
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
