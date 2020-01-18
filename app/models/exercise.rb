class Exercise < ActiveRecord::Base
    has_many :routine_exercise
    has_many :routines, through: :routine_exercises
    has_many :exercise_logs
    has_many :users, through: :exercise_logs
end