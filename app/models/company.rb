class Company < ApplicationRecord
  has_many :employees, dependent: :destroy

  def employee_count
    employees.count
  end

  def total_reimbursement_claims
    employees.includes(:reimbursements).sum(:amount)
  end
end
