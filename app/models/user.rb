class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_secure_password
  has_and_belongs_to_many :relationship
  has_many :lessons
end
