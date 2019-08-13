Rails.application.routes.draw do
  resources :phone_numbers, only: :create
end
