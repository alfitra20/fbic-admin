class AddUserId < ActiveRecord::Migration
   def change

        change_table :users do

        add_column :users, :id, :primary_key

        end

  end
end
