class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :employee_count
      t.integer :reimbursement_sum

      t.timestamps
    end
  end
end
