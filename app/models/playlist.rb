class Playlist < ActiveRecord::Base
  belongs_to :list
  belongs_to :video
end
