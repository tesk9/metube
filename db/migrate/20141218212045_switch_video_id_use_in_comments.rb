class SwitchVideoIdUseInComments < ActiveRecord::Migration
  def change
    add_column :comments, :comment_on, :string
    remove_column :comments, :video_id
    add_reference :comments, :location_id, index: true
  end
end
