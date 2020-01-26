class ExercisesController < ApplicationController

    def index
        @exercises = Exercise.all
    end

    def show
        require_login
        @exercise = Exercise.find_by_id(params[:id])
    end
end
