class Company < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :reimbursements, through: :employees

  before_save :update_employee_count
  before_save :update_reimbursement_sum

  private

  def update_employee_count
    self.employee_count = employees.size
  end

  def update_reimbursement_sum
    self.reimbursement_sum = reimbursements.sum(:amount)
  end
end
