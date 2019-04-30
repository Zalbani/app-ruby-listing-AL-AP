class Api::V1::Annonces::AllannoncesController < Api::ApiController

  def index
    @annonces = Annonce.all
  end

  def create
    @listing = Annonce.new(listings_params)
    if @listing.save
      redirect_to controller: '/welcome' , created_annonce: 'true'
    else
      raise @listing
    end
  end

  private

  def listings_params
    params.permit(
        :content,
        :price,
        :title
        )
  end

end