class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_secure_password
  has_and_belongs_to_many :relationships
  has_many :lessons
end
