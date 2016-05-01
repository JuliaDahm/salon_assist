class EmployeeController < ApplicationController
  before_action :authenticate_user!


  def index
    @employees = Employee.all 
  end

  def new
    @employee = Employee.new
  end

  def create
    if @employee.save 
      # @employee.save_attribute :admin, true 
      
  end

  def edit
  end
 
  def update 
  end

  def destroy
  end 

  private 

  def employee_params
  end 

  def employee
  end 

end
