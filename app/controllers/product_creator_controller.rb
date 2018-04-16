class ProductCreatorController < ApplicationController

  before_action :authorize
  include ApplicationHelper

  def new
    @product = Product.new
  end

end
