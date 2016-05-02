class EmployeeController < ApplicationController
  before_action :authenticate_user!
  before_action :employee, except: [:index, :new, :create]

  def index
    @employees = Employee.all 
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    binding.pry
    if @employee.save 
      @employee.save_attribute :admin, true ?
    else 
      render :new 
  end

  def edit
  end
 
  def update 
    if @employee.update(employee_params)
      redirect_to employees_path 
    else
      render :edit
  end

  def destroy
    deleted_employee = @employee.name
    @employee.destroy
    puts "#{deleted_employee} has been deleted."
    redirect_to employees_path
  end 

  private 

  def employee_params
    params.require(:employee).permit(:name, :date)
  end 

  def employee
    @employee = current_employee.find(params[:id])
  end 

end
