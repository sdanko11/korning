class AllSalesController < ApplicationController
   
  def index
    @sales_last_15_months = Sale.where(:date_sold => 15.months.ago..Time.now)
  end

end