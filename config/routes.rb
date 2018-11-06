Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    localized do

    devise_for :users

    end
end
