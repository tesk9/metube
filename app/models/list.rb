class List < ActiveRecord::Base
  validates :name, length: {minimum: 2, maximum: 25}, presence: true
end
