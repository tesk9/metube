class MakeEverythingCommentable < ActiveRecord::Migration
  def create
    create_table :commentable do |t|
      t.integer :commentable_id
      t.string :commentable_type
      t.timestamps
    end
  end
end
