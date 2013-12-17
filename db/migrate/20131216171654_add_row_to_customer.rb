class AddRowToCustomer < ActiveRecord::Migration
  def up
    add_column :customers, :rate_of_invoice_id, :string 
  end
  def down
    remove_column :customers, :rate_of_invoice_id
  end
end
