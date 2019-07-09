class AddTasknameToAssignnments < ActiveRecord::Migration[5.0]
    
    def change 
        add_column :assignments, :taskname, :string
    end 
end