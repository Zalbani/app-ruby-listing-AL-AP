class ListingsController < ApplicationController

  def index

    @announces = Search.new(params[:query]).perform
  end

  def show
    @announce = Annonce.find(params[:id])
    #@annonces = PostDecorator.new(post).to_post
  end

  def new

  end

end
