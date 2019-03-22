Rails.application.routes.draw do

  localized do
    devise_for :users

    root 'welcome#index'

    resources :languages, only: :show
    resources :listings

    get 'listings', action: :index, controller: 'listings'
    get 'account/user', action: :edit, controller: 'devise/registrations'

    namespace :account do
      get 'contacts', action: :index, controller: 'contacts'
      get 'messages', action: :index, controller: 'messages'
    end

  end

  # TO-DO bug with /admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end