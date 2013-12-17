class CreateInvoices < ActiveRecord::Migration
  def up
    create_table :invoices do |t|
      t.integer :sale_id
      t.decimal :sale_amount_per_payment
      t.timestamps
    end
  end
  def down 
    drop_table :invoices
  end
end