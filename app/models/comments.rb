class Comments < ActiveRecord::Base
  has_many :comments
  validates :subject, length: {maximum: 50}, presence: true
end
