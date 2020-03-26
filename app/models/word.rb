class Word < ApplicationRecord
  belongs_to :lesson
  has_many :word_answers
end
