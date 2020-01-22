class RoutineExercise < ActiveRecord::Base
    belongs_to :routine 
    belongs_to :exercise

    def exercise_attributes=(exercise_attributes)
        
    end
end