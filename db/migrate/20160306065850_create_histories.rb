class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
    t.datetime :playtime
    t.belongs_to :user, index: true
    t.belongs_to :emotion, index: true
    t.belongs_to :music, index: true

      t.timestamps null: false
    end
  end
end
