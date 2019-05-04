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
      resources :'contacts', only: [:index]
      resources :'user', only: [:index, :create]
    end

    namespace :api, format: 'json' do
      post 'auth', to: 'api#sign_in', as: 'sign_in'
      namespace :v1 do
        namespace :account do
          root 'profile#index'
        end
        namespace :msgreceive do
          root 'receive#index'
        end
        namespace :msgsent do
          root 'sent#index'
        end
        namespace :annonces do
          root 'allannonces#index'
        end
        namespace :categories do
          root 'allcategory#index'
        end

        post 'create-annonce', to: 'annonces/allannonces#create'
        resources :listings

        post 'create-message', to: 'msgsent/sent#create'
        resources :messages
      end
    end
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end