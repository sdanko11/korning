class ChangeTimeDataType < ActiveRecord::Migration
  def up
     rename_column :sales, :date_sold, :date_sold_string
    # rename date_sold to date_sold_string
    # add column for date_sold, type datetime
      add_column :sales, :date_sold, :datetime

    # loop over each sale, setting the value for new date_sold
    # Sale.all.each do |sale|
    #   sale.date_sold =  DateTime.parse(sale.date_sold_string)
    #   sale.save
    # end
    def down 
      rename_column :sales, :date_sold_string, :date_sold
      remove_column :sales, :date_sold
    end
  end
end
