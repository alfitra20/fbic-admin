class AddNameToUsers < ActiveRecord::Migration
  def change
        change_table :users do |t|
                t.string "first_name", :limit =>25
                t.string "last_name", :limit =>25

        t.timestamps null: false

        end
  end
end
