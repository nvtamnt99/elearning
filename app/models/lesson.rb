class Lesson < ApplicationRecord
  has_many :words, through: :lesson_words
  has_many :lesson_words, dependent: :destroy
  belongs_to :user
  belongs_to :category

  accepts_nested_attributes_for :words
end
