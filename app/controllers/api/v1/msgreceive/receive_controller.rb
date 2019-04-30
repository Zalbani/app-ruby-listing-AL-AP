class Api::V1::Msgreceive::ReceiveController < Api::ApiController

  def index
    @messages = Message.where(user_id: @user.id).includes(:annonce)
  end
end