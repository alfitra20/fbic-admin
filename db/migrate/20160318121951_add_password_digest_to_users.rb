class AddPasswordDigestToUsers < ActiveRecord::Migration
  def up
  	remove_column "Users", "password"
  	add_column "Users", "password_digest", :string
  end

  def down
  	remove_column "Users", "password_digest", :string
  	add_column "Users", "password"
  end
end
