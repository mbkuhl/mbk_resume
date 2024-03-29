Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "welcome#index"
  get "/experience", to: "resume#show"
  get "/projects", to: "projects#index"
  get "/education", to: "education#show"
  get "/contact", to: "contact#new"
  post "/contact", to: "contact#create"
end
