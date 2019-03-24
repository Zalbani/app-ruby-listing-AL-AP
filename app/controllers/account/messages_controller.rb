class Account::MessagesController < ApplicationController

  def index
    @messages = Message.where(user_id: current_user.id).includes(:annonce)
  end

  def create
    @message_new = Message.new(message_params)
    if @message_new.save
      redirect_to controller: '/welcome', created_message: 'true'
    else
      redirect_to controller: '/listings', created_message: 'false'
    end
  end

  private

  def message_params
    params.require(:message).permit(
        :message,
        :annonce_id,
        ).merge(user_id: current_user.id)
  end

end