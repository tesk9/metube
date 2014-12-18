class EditLocationIdInComments < ActiveRecord::Migration
  def change
    remove_column :comments, :location_id_id
    add_column :comments, :location_id, :integer
  end
end
