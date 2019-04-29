class Api::V1::Account::ProfileController < Api::ApiController

  def index
    @user = User.last
  end

end