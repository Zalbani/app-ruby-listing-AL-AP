require 'test_helper'

feature "Auth" do

  before  do
    @user = User.create(
                    email: 'email@domaine.com',
                    first_name: 'Prenom',
                    last_name: 'Nom',
                    password: 'password123',
                    password_confirmation: 'password123',
                    role: roles(:admin)
    )
  end

  focus
  it "Return a token if i'm logged in" do
    post api_v1_auth_path, {
        email: @user.email,
        password: 'password123'
    }
    assert_equal 200 , last_response.status
  end

end