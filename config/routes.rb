Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :brands
  resources :users
  devise_for :brands
  root to: "brands#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
