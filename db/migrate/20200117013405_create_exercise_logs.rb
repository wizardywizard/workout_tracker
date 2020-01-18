class CreateExerciseLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_logs do |t|
      t.integer :exercise_id
      t.integer :user_id
      t.integer :id
    end
  end
end
