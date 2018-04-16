class CompaniesController < ApplicationController
  
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
    @company.users.build if @company.users.nil?
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to '/'
    else
      redirect_to '/companies/new'
    end
  end

  def show
    @company = Company.find(params[:id])
    @products = Product.all
  end

  def company_params
    params.require(:company).permit(:name, :description, users_attributes: [:username, :password, :password_confirmation] )
  end


end
