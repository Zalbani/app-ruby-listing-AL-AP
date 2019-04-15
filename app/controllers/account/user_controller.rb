class Account::UserController < ApplicationController

  def index
    @user = current_user
  end

  def create
    @user = current_user
    current_user.update(user_params)
    redirect_to account_user_index_path
  end

  private
  def user_params
    params.require(:user).permit(
     :first_name,
     :last_name,
     :email,
     :password,
     :password_confirmation
    )
  end

end