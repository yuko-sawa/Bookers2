Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  
  resources :book,only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
  
  get 'homes/about' => 'homes#about', as: 'about'
  
end
