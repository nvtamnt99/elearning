class Word < ApplicationRecord
  has_many :lesson_words, dependent: :destroy
  has_many :lessons, through: :lesson_words
  has_many :word_answers, dependent: :destroy
  has_many :categories

  accepts_nested_attributes_for :word_answers
end
