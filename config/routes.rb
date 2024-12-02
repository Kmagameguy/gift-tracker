Rails.application.routes.draw do
  resource :home, only: %i[ show ]
  resource :session
  resources :passwords, param: :token

  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#show"
end
