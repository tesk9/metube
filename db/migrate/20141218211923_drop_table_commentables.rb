class DropTableCommentables < ActiveRecord::Migration
  def change
    drop_table "commentables"
  end
end
