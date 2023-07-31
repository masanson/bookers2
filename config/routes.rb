Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'
  root to: 'homes#top'
  resources :users, only: [:show, :edit,]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
