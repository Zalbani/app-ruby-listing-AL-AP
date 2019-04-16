class Api::V1::AuthController < Api::ApiController

  def create
    user = User.find_by_email(email: params[:email])
    token= nil

    if user
      if user.valid_passord?(params[:password])
        token = user.generate_token
        render json: {success: true, token: token}
      else
        render json: {success: false, errors:{user: [I18n.t('activerecord.errors.models.user.password.invalid')]}},status: 401
      end
    else
      render json: {success: false, errors:{user: [I18n.t('activerecord.errors.models.user.invalid')]}},status: 401
    end
  end
end
