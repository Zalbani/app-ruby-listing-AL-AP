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


  it "Return a token if i'm logged in" do
    post api_sign_in_path, {
        email: @user.email,
        password: 'password123'
    }
    assert_equal 200 , last_response.status
  end


  it "Return error if password is invalid" do
    post api_sign_in_path, {
        email: @user.email,
        password: 'pqwes'
    }
    assert_equal 401 , last_response.status
  end

  it "Return 401 if credential invalid" do
    post api_sign_in_path, {
        email: @user.email,
        password: 'password123'
    }
    token = json_response['token']

    get api_v1_account_root_path, header: {
        "HTTP_AUTHORIZATION": token
    }

    raise json_response.inspect

  end



end