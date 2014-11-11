class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
    	t.belongs_to :customer
    	t.float :time
    	t.belongs_to :employee
      t.timestamps
    end
  end
end
