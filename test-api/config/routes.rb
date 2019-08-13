Rails.application.routes.draw do
  resources :phone_numbers, only: :create
  resources :generate_numbers, only: :create
end
