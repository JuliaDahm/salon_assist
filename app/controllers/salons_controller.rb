class SalonsController < ApplicationController
  before_action :employee, only: [:new, :create, :destroy]

  def new
    @salon = Salon.new 
  end

  def create 
    @salon = @employee.salons.create(salon_params)
  end 

  def edit
  end

  def update
  end 

  def destroy 
  end 

  private 

  def salon_params
    params.require(:salon).permit(:salon_name)
  end 

  def employee
    @employee = Employee.find(params[:employee_id])
  end 
end
