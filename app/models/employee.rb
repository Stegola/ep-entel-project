class Employee < ActiveRecord::Base
    has_many :companies_employees
    has_many :companies, :through => :companies_employees

end

