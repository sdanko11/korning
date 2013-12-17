class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.includes(sales: :product).find(params[:id])
    @sales = @employee.sales
  end

end


