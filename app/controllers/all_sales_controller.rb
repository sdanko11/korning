class AllSalesController < ApplicationController
   
   def index
    @sales_last_12_months = Sale.where(:date_sold => 12.months.ago..Time.now)
    end

end