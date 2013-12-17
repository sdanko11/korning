class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  # def def show
  #   @employee = Employee.find(params[:id])
  # end

end
