class Account::MessagesController < ApplicationController

  def index
    @messages = Message.where(user_id: current_user.id).includes(:annonce)

  end

end