class Reimbursement < ApplicationRecord
  belongs_to :employee
  validates :purpose, presence: true
  validates :amount, presence: true
  validates :date_of_expenditure, presence: true
end