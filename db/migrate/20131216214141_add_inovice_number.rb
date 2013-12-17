class AddInoviceNumber < ActiveRecord::Migration
  def up
    add_column :sales, :invoice_number, :string
  end
  def down
    remove_column :sales, :invoice_number
  end
end