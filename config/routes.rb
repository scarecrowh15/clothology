Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :brands

  resources :users
  devise_for :brands
  root to: "brands#index"
  get '/fashion_list', to: 'brands#fashion_list'
  get '/footwear_list', to: 'brands#footwear_list'
  get '/upload_payment/:id', to: 'brands#upload_payment'
  get '/payment_success', to: 'brands#payment_success'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
