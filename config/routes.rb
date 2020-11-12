Rails.application.routes.draw do
  get 'books/index'
  devise_for :users
  root to: 'books#index'
  post '/books/:book_id' => 'comments#create'

  resources :users
  resources :books do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
