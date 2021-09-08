Rails.application.routes.draw do
  resources :users
  resources :pet_trainers
  resources :trainers
  resources :shelters, only: [:index, :show]
  resources :pets, only: [:index, :show]

  post "/signup", to: "users#create"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
