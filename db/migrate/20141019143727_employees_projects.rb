class EmployeesProjects < ActiveRecord::Migration
  def change
  	create_table :accounts_projects do |t|
  		t.belongs_to :employee, :project, index: true
  		t.timestamps
  	end
  end
end
