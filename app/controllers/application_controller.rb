class ApplicationController < ActionController::Base
  before_action :set_language
  protect_from_forgery with: :exception

  def set_language
    if !session[:language]
      session[:langage] = 'en'
    end
  end
end
