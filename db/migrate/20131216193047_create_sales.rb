class CreateSales < ActiveRecord::Migration
  def up
    create_table :sales do |t|
      t.integer :customer_id
      t.integer :sales_person_id
      t.decimal :sale_amount
      t.integer :product_id
      t.string :rate_of_invoice
      t.integer :units_sold
      t.string :date_sold
      t.timestamps
    end
  end
  def down
    drop_table :sales
  end
end
