class RenameEmployeeRow < ActiveRecord::Migration
  
  def up
    rename_column :sales, :sales_person_id, :employee_id
  end

  def down
    rename_column :sales, :employee_id, :sales_person_id
  end
  
end