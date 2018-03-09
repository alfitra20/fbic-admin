class Altertableusers < ActiveRecord::Migration
  def change
  	remove_column "Users", "password_digest"
  	add_column "Users", "password", :string
  end
end
