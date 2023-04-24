Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get 'homes/about', to: 'home#about', as: 'about'

end
