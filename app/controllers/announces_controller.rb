class AnnouncesController < ApplicationController

  def index
    @announces = Annonce.all
  end

  def show
    @announce = Annonce.find(params[:id])
    #@annonces = PostDecorator.new(post).to_post
  end

end
