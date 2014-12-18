class AddColumnCommentIdToCommentables < ActiveRecord::Migration
  def change
    add_reference :commentables, :comment, index: true 
  end
end
