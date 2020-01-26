class Routine < ActiveRecord::Base
    belongs_to :user
    has_many :routine_exercises
    has_many :exercises, through: :routine_exercises
    has_many :exercise_logs, through: :exercises

    def self.by_user(user)
        where(:user_id => user.id)
    end
end