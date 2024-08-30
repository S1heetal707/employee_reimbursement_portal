class EmployeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_company

  def index
    @employees = @company.employees
  end

  def new
    @employee = @company.employees.new
  end

  def create
    @employee = @company.employees.new(employee_params)
    @company.increment!(:employee_count)
    if @employee.save
      redirect_to company_path(@company), notice: 'Employee created successfully.'
    else
      render :new
    end
  end

  def show
    @employee = @company.employees.find(params[:id])
  end

  private

  def set_company
    @company = Company.find(params[:company_id])
  end

  def employee_params
    params.require(:employee).permit(:name)
  end
end
