class ServicesController < ApplicationController

  def index
    @services = Service.all 
  end

  def new
    @service = Service.new 
  end

  def create
  end 

  def edit
  end

  def destroy 
  end 

end
