class Reimbursement < ApplicationRecord
  belongs_to :employee
  delegate :company, to: :employee
end