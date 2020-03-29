class Word < ApplicationRecord
  has_many :lesson_words, dependent: :destroy
  has_many :lessons, through: :lesson_words
  has_many :word_answers, through: :lesson_words

  accepts_nested_attributes_for :word_answers
end
