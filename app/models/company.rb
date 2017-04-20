class Company < ActiveRecord::Base
    has_many :companies_employees
    has_many :employees, :trough => :companies_employees
    
end
