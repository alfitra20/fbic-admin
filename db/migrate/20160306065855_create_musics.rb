class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
    	t.string "musicTitle", :limit => 35, :null => false
    	t.belongs_to :artist, index: true
    	t.integer "year", :limit => 4
    	t.belongs_to :album, index: true
    	

      t.timestamps null: false
    end
  end
end
