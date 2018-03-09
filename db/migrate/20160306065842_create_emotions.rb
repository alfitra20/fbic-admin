class CreateEmotions < ActiveRecord::Migration
  def change
    create_table :emotions do |t|

    	t.string "emotionType", :limit => 15, :null => false

      t.timestamps null: false
    end
  end
end
