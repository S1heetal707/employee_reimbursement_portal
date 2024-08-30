class Employee < ApplicationRecord
  belongs_to :company
  has_many :reimbursements, dependent: :destroy
end