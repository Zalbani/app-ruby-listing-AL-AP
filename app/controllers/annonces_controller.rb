class AnnoncesController < ApplicationController

  def index
    @annonces = Annonce.all
  end

  def show
    @annonce = Annonce.find(params[:id])
    #@annonces = PostDecorator.new(post).to_post
  end

end
