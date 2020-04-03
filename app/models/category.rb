class Category < ApplicationRecord
  validates :name, presence: true
  belongs_to :lesson
  belongs_to :word  
end
