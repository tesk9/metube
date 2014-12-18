class CreateCommentables < ActiveRecord::Migration
  def change
    create_table :commentables do |t|

      t.timestamps
    end
  end
end
