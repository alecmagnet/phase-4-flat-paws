Rails.application.routes.draw do
  resources :pet_trainers
  resources :trainers
  resources :shelters, only: [:index, :show]
  resources :pets, only: [:index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
