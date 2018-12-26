Rails.application.routes.draw do


  localized do
    devise_for :users

    root to: 'listings#index'
    resources :languages, only: :show
    resources :listings

    get 'listings', action: :index, controller: 'listings'
    
  end

  # TO-DO bug with /admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end