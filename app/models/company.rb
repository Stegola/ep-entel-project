class Company < ActiveRecord::Base
    has_many :companies_employees
    has_many :employees, :through => :companies_employees
    
end
