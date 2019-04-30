class Api::V1::Categories::AllcategoryController < Api::ApiController

  skip_before_action :auth_with_token, :only => [:index]

  def index
    @test = Category.all
  end
end