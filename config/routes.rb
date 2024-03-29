Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'homes/about', as: 'about'
  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  resources :users, only: [:show, :edit]
end
