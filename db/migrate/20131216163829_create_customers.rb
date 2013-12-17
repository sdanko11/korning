class CreateCustomers < ActiveRecord::Migration
  
  def up
    create_table :customers do |t|
      t.string :name, null: false
      t.string :acct_numbner, null: false
      t.string :url, null: false 
      t.timestamps
    end
  end
  def down
    drop_table :customers
  end
end
