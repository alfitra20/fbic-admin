class CreateTopplaylists < ActiveRecord::Migration
  def change
    create_table :topplaylists do |t|
    t.string "musicName", :limit=>35
    t.belongs_to :emotion, index: true
    t.belongs_to :music, index: true

      t.timestamps null: false
    end
  end
end
