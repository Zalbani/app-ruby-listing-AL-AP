class Api::V1::Categories::AllcategoryController < Api::ApiController

  def index
    @test = Category.all
  end
end