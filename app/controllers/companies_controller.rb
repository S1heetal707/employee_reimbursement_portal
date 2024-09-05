class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_company, only: [:show]

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
  end

  private

  def set_company
    @company = Company.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to companies_path, alert: 'Company not found.'
  end

  def company_params
    params.require(:company).permit(:name)
  end
end
