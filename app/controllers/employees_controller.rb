class EmployeesController < ApplicationController
  
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new({:name => "default"})
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to(:active => 'index')
    else
      render('new')
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to(:active => 'index')
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end
  
  
  private
      
  def employee_params
    params.require(:employee).permit(:name, :surname, :experience)
  end
    
end
