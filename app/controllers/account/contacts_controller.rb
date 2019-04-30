class Account::ContactsController < ApplicationController

  def index
    @messages = Message.joins(:annonce).where("annonces.user_id" => current_user.id);
  end

end