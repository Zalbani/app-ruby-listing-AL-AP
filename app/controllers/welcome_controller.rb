class WelcomeController < ApplicationController
  def index
    @announces = Search.new(params[:query])

  end
end
