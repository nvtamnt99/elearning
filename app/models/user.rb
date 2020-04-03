class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_secure_password
  belongs_to :relationship
  has_many :lessons
end
