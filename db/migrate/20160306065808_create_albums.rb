class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
    	t.string "albumTitle", :limit => 35, :null => false
    	t.integer "year", :limit => 4
    	t.belongs_to :artist, index: true
      t.timestamps null: false
    end
  end
end
