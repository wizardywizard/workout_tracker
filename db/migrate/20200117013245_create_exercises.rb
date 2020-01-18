class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.boolean :weights
      t.integer :reps
      t.integer :id
    end
  end
end
