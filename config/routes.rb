Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  devise_for :users
  get 'home/about' => 'homes#about', as: 'about'
  root to: 'homes#top'
  resources :users, only: [:index,:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end