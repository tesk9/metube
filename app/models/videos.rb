class Videos < ActiveRecord::Base
  has_many :comments
  validates :title, uniqueness: true, length: {minimum: 2, maximum: 140}, presence: true
  validates :url, uniqueness: true, presence: true
end
