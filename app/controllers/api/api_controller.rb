class Api::ApiController < ApplicationController

  #before_action :auth_with_token, except: :sign_in
  #skip_before_action :verify_authenticity_token



  def sign_in
    user = User.find_by(email: params[:email])
    token = nil

    if user
      if user.valid_password?(params[:password])
        token = user.generate_token
      end
    end
    if token
      render json: {success: true, token: token}
    else
      render json: {
          success: false,
          errors: [
              {users: [I18n.t('activerecord.errors.models.user.password.invalid')]}
          ]
      }, status: 401
    end
  end



  private

  def auth_with_token
    @user = User.find_by(auth_token: request.headers["HTTP_AUTHORIZATION"])

    unless @user
      render json: {success: false}, status: 401
    end
  end
end
