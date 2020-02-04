class ExercisesController < ApplicationController

    def index 
        if params[:user_id]
            @exercises = User.find(params[user_id]).exercises
        else
            @exercises = Exercise.all
        end
    end

    def show
        require_login
        @exercise = Exercise.find_by_id(params[:id])
    end
end
