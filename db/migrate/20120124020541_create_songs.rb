class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.float :latitude
      t.float :longitude
      t.float :duration
      t.timestamp :start_time

      t.timestamps
    end
  end
end
