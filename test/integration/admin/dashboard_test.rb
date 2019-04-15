# require 'test_helper'
#
# feature "Dashboard" do
#
#   describe "NOT logged in " do
#     it "redirects me if I'm not logged" do
#       get rails_admin
#
#       assert_equal 302, last_response.status
#     end
#   end
#
#   describe "Logged in" do
#     before do
#       sign_in users(:one)
#     end
#
#     it "responds 200 when I'm logged" do
#       get  rails_admin
#       assert_equal 200, last_response.status
#     end
#   end
#
#
# end
