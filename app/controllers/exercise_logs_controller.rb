class ExerciseLogsController < ApplicationController
    before_action :find_exercise_log, only: [:show, :edit, :update, :destroy]
    def index
        @exercise_logs = ExerciseLog.all
    end

    def new
        @exercise_log = ExerciseLog.new
    end

    def create
        require_login
        @exercise_log = current_user.exercise_logs.create(exercise_log_params)
        if @exercise_log.save
            redirect_to exercise_log_path(@exercise_log)
        else
            render :new
        end
    end

    def show
    end
  
    def edit
    end

    def update
        @exercise_log.update(exercise_log_params)
        if @exercise_log.save
            redirect_to exercise_log_path(@exercise)
        else
            render :edit
        end
    end

    def destroy
        @exercise_log.delete
        redirect_to exercise_log_path
    end

    private
    def find_exercise_log
        @exercise_log = ExerciseLog.find_by(id: params[:id])
    end

    def exercise_log_params
        params.require(:exercise_log).permit(:user_id, :date, :weight, :reps, exercise_ids:[])       
    end
end
