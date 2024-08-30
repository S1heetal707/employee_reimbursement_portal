class ReimbursementsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_company
  before_action :set_employee

  def index
    @reimbursements = @employee.reimbursements
  end

  def new
    @reimbursement = @employee.reimbursements.new
  end

  def create
    @reimbursement = @employee.reimbursements.new(reimbursement_params)
    if @reimbursement.save
      redirect_to company_employee_path(@company, @employee), notice: 'Reimbursement claim submitted successfully.'
    else
      render :new
    end
  end

  def show
    @reimbursement = @employee.reimbursements.find(params[:id])
  end

  private

  def set_company
    @company = Company.find(params[:company_id])
  end

  def set_employee
    @employee = @company.employees.find(params[:employee_id])
  end

  def reimbursement_params
    params.require(:reimbursement).permit(:purpose, :amount, :date_of_expenditure)
  end
end
