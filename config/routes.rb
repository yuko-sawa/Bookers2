Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  
  resources :book,only:[:new, :index, :show]
  
  get 'homes/about' => 'homes#about', as: 'about'
  
  
end
