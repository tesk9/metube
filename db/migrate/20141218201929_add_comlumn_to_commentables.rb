class AddComlumnToCommentables < ActiveRecord::Migration
  def change
    add_column :commentables, :commentable_id, :string
  end
end
