Rails.application.routes.draw do
  root 'events#index'
  resources :homes
  resources :events
  resources :users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
