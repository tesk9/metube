class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.references :video
      t.timestamps
    end
  end
end
