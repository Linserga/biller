class RemoveOldTables < ActiveRecord::Migration
  def change
  	drop_table :customers
  	drop_table :employees
  end
end
