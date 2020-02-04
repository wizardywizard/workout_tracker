class Routine < ActiveRecord::Base
    belongs_to :user
    has_many :routine_exercises
    has_many :exercises, through: :routine_exercises
    has_many :exercise_logs, through: :exercises
    validates :name, presence: { message: "must have a name" }
    validate :must_have_three_exercises

     

    def must_have_three_exercises
        if exercises.size < 3          
            errors.add(:exercises, "must have 3 exercises selected")
        end
    end
end