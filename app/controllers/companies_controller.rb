class CompaniesController < ApplicationController
  before_action :authenticate_user!

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path, notice: 'Company created successfully.'
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end
