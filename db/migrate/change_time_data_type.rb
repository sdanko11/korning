class ChangeTimeDataType < ActiveRecord::Migration
  
  def up
    rename_column :sales, :date_sold, :date_sold_string
    add_column :sales, :date_sold, :datetime
  end
  def down 
    rename_column :sales, :date_sold_string, :date_sold
    remove_column :sales, :date_sold
  end

end