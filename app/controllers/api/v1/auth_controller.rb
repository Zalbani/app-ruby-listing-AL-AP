class Api::V1::AuthController < Api::ApiController

  def create

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
end
