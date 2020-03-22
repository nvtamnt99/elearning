class Photo < ActiveRecord::Base
  attr_accessible :album_id, :name, :avatar
  belongs_to :album
  mount_uploader :avatar, AvatarUploader
end
