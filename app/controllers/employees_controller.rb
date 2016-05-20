class EmployeesController < ApplicationController
  before_action :authenticate_employee!
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
    # if @employee.save 
    #   # @employee.update_attribute :admin, true ?
    #   redirect_to new_employee_salon_path(current_employee[:id])
    # else 
    #   render :new 
    # end 
  end

  def edit
  end
 
  def update 
    # if @employee.update(employee_params)
    #   redirect_to employees_path 
    # else
    #   render :edit
    # end 
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
    @employee = Employee.find(params[:employee_id])
  end 

end
