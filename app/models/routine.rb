class Routine < ActiveRecord::Base
    belongs_to :user
    has_many :routine_exercises
    has_many :exercises, through: :routine_exercises
    has_many :exercise_logs, through: :exercises
end