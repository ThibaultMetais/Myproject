class ProductsController < ApplicationController

include ApplicationHelper

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @companyURL = "/companies/" + @product.company_id.to_s
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      @product.update_attribute(:company_id, current_user.company_id)
      redirect_to @product
    else
      flash[:notice] = "There was a problem, please check your awnsers and try again"
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description)
  end

end
