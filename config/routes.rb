Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :testes
  devise_for :users
  devise_for :admins

  namespace :admin do
    root to: 'dashboard#index'
    resources :categories
    resources :products
  end

  root to: "main#index"

end
