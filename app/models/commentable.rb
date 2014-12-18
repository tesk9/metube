class Commentable < ActiveRecord::Base
  belongs_to :comment, :polymorphic => true 
end
