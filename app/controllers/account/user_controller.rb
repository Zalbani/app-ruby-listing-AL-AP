class Account::UserController < ApplicationController

  def index
    @user = current_user
  end

  def create
    @user = current_user
    current_user.update(user_params)
    if @user.save
      redirect_to controller: '/account/user', updated_account: 'true'
    else
      redirect_to controller: '/account/user', updated_account: 'false'
    end

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