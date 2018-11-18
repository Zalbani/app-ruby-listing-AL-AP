Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  localized do

  devise_for :users


  root to: 'annonces#index'
  resources :annonces
  #resources :currencies, only: :show


  namespace :admin do
      root to: 'dashboard#index'
      resources :posts
    end
  end
end
