class AddColumnToPlaylist < ActiveRecord::Migration
  def change
    add_column :playlists, :list_id, :integer
  end
end
