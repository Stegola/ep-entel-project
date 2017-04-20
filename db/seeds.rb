# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#################
# Table:
# companies
#################
Company.create(:name => "Nordeus", :location => "Belgrade")
Company.create(:name => "BMW", :location => "Munich")
Company.create(:name => "Frame", :location => "Nis")
Company.create(:name => "Golux Technology Center", :location => "Belgrade")
Company.create(:name => "Deimler-Benz", :location => "Stuttgart")

#################
# Table:
# employee
#################
Employee.create(:name => "Nikola", :surname => "Nikolic")
Employee.create(:name => "Pera", :surname => "Peric")
Employee.create(:name => "Luka", :surname => "Lukic")
Employee.create(:name => "Smrda", :surname => "Mudic")
Employee.create(:name => "Marko", :surname => "Kraljevic")
Employee.create(:name => "Dule", :surname => "Pacov")
Employee.create(:name => "Goran", :surname => "Karan")
Employee.create(:name => "Marko", :surname => "Pantelic")

#################
# Join Table:
# companies_employees
#################
CompaniesEmployee.create(:company_id => Company.first.id, :employee_id => Employee.second.id)
CompaniesEmployee.create(:company_id => 3, :employee_id => 4)
CompaniesEmployee.create(:company_id => 4, :employee_id => 5)
