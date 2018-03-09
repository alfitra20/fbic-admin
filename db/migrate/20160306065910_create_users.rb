class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.column "email", :string, :limit => 25, null: false
    t.string "password", :limit => 15, null: false
    t.string "first_name", :limit => 25
    t.string "last_name", :limit => 25
    t.string "gender",:limit=>7
     
    t.timestamps null: false
    end
  end
end
