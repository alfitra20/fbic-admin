class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
    	t.string "artistName", :limit=>35, :null => false
      t.timestamps null: false
    end
  end
end
