class User < ActiveRecord::Base
    has_many :routines
    has_many :exercise_logs
    has_many :exercises, through: :exercise_logs
    has_secure_password
end