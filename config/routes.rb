Rails.application.routes.draw do
# Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # API routes for your app
  resources :users, only: [:create, :index]
  resources :posts, only: [:create, :index, :update, :destroy]

  # Optional root route
  # root "posts#index"
end



