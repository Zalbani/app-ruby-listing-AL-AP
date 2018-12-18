Rails.application.routes.draw do


  localized do
    devise_for :users

    root to: 'announces#index'
    resources :languages, only: :show
    resources :announces

    get 'listings', action: :index, controller: 'listings'






    namespace :admin do
      root to: 'dashboard#index'
      resources :posts
    end
  end

  # TO-DO bug with /admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end