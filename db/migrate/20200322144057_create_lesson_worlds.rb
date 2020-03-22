class CreateLessonWorlds < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_worlds do |t|
      t.integer :lesson_id
      t.integer :word_id
      t.integer :word_answer_id

      t.timestamps
    end
  end
end
