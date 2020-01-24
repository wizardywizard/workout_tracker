class CreateExerciseLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_logs do |t|
      t.integer :exercise_id
      t.integer :user_id
      t.integer :weight
      t.integer :reps
      t.datetime :date
    end
  end
end
