class ExerciseLog < ActiveRecord::Base
    belongs_to :user
    belongs_to :exercise
    validates :date, presence: { message: "must have a date" }
    validates :reps, numericality: { greater_than_or_equal_to: 5 }

    def self.by_user(user)
        where(:user_id => user.id)
    end


end