Rails.application.routes.draw do
  get 'books/index'
  devise_for :users
  root to: 'books#index'

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
