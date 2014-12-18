class Videos < ActiveRecord::Base
  has_many :comments
end
