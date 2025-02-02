class Api::V1::Annonces::AllannoncesController < Api::ApiController

  skip_before_action :verify_authenticity_token
  skip_before_action :auth_with_token, :only => [:index]



  def index
    @annonces = Annonce.all
  end

  def create
    @listing = Annonce.new(listings_params)
    if @listing.save
      render json: @listing , status: 200
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  private

  def listings_params
    params.permit(
        :title,
        :content,
        :price,
        :category_id,
        picture_attributes: [:file]).merge(user_id: @user.id)
  end

end