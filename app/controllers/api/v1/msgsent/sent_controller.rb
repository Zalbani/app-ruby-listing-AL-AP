class Api::V1::Msgsent::SentController < Api::ApiController

  def index
    @messages = Message.joins(:annonce).where("annonces.user_id" => @user.id);
  end

  def create
    @message_new = Message.new(message_params)
    if @message_new.save
      render json: @message_new , status: 200
    else
      render json: @message_new.errors, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.permit(
        :message,
        :annonce_id,
        ).merge(user_id: @user.id)
  end
end