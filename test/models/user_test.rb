require 'test_helper'
describe User do

  before do
    @user = users(:seller)

  end

  it "returns false if role != admin" do

  end

end
describe "NOT logged in" do
  it "redirects me if I'm not logged" do
    get new_listing_url#create
    assert_equal 200, last_response.status
  end
end
