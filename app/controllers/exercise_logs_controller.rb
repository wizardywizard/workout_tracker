class ExerciseLogsController < ApplicationController

    def index
        @exercise_logs = ExerciseLog.all
    end

    def new
        @exercise_log = ExerciseLog.new
    end

    
end
