class LessonWord < ApplicationRecord
  belongs_to :word
  belongs_to :lesson
  belongs_to :word_answer
end
