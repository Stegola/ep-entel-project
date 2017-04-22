class EmployeesController < ApplicationController
  
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new({:name => "default"})
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
    if @employee.destroy
      redirect_to(:action => 'index')
    end
  end
  
  
  private
  
  def set_employee
    @employee = Employee.find(params[:id])
  end
  
  def employee_params
    params.require(:employee).permit(:name, :surname, :experience)
  end
    
end
