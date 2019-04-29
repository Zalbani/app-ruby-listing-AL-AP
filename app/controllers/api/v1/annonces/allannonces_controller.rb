class Api::V1::Annonces::AllannoncesController < Api::ApiController

  def index
    @my_annonce = Annonce.all
  end

end