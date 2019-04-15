Rails.application.routes.draw do

  localized do
    devise_for :users

    root 'welcome#index'

    resources :languages, only: :show
    resources :listings


    get 'listings', action: :index, controller: 'listings'

    # get 'account/user', action: :edit, controller: 'devise/registrations'

    namespace :account do
      resources :messages, only: [:index, :create]
      get 'contacts', action: :index, controller: 'contacts'
      resources :'user', only: [:index, :create]
    end

  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end