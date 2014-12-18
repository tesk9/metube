class Comments < ActiveRecord::Base
  has_many :comments, :as => :commentable
  validates :subject, length: {maximum: 50}, presence: true
end
