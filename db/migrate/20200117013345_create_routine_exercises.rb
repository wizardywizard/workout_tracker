class CreateRoutineExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :routine_exercises do |t|
      t.integer :exercise_id
      t.integer :routine_id
    end
  end
end
