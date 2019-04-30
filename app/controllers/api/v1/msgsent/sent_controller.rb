class Api::V1::Msgsent::SentController < Api::ApiController

  def index
    @messages = Message.joins(:annonce).where("annonces.user_id" => @user.id);
  end
end