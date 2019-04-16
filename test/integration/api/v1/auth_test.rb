require 'test_helper'

feature "Auth" do

  before  do
    @user = User.create(
                    email: 'email@domaine.com',
                    password: 'password123',
                    password_confirmation: 'password123'
    )
  end

  it "Return a token if i'm logged in" do
    post api_v1_auth_path,{
        email: @user.email,
        password:@user.password
    }

    assert_equal 200 , last_response.status.must_equal
  end

end