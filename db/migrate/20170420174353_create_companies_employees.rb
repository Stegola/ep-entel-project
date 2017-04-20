class CreateCompaniesEmployees < ActiveRecord::Migration
  def change
    create_table :companies_employees do |t|
      t.references :company, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
