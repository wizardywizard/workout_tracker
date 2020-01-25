class ExerciseLog < ActiveRecord::Base
    belongs_to :user
    belongs_to :exercise

    def self.by_user(user)
        where(:user_id => user.id)
    end
end