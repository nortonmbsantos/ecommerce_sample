Rails.application.routes.draw do
  resources :testes
  devise_for :users
  devise_for :admins

  namespace :admin do
    resources :categories
  end

  root to: "main#index"

end
