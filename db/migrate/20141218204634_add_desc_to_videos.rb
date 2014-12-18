class AddDescToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :desc, :string
  end
end
