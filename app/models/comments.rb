class Comments < ActiveRecord::Base
  belongs_to :video
  validates :subject, length: {maximum: 50}, presence: true
end
