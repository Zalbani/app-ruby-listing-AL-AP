require 'test_helper'

feature "Homepage" do

  it "respond a 200 when loading homepage" do
    get root_path

    assert_equal 200, last_response.status
  end

  describe "NOT logged in " do
    it "redirects me if I'm not logged" do
      get listings_url#create
      assert_equal 200, last_response.status
    end
  end

  describe "Logged in" do
    before do
      sign_in users(:two)
    end
    it "responds 200 when I'm logged" do
      get  listings_url#create
      assert_equal 200, last_response.status
    end
  end

end
