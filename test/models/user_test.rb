require 'test_helper'

describe "NOT logged in " do
  it "redirects me if I'm not logged" do
    get new_listing_url#create
    assert_equal 200, last_response.status
  end
end
