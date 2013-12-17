class CreateEmployees < ActiveRecord::Migration
  def up
    create_table :employees do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps
    end
  end
  def down
    drop_table :employees
  end
end