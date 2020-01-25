class RoutinesController < ApplicationController
before_action :find_routine, only: [:show, :edit, :update, :destroy]
before_action :require_login
skip_before_action :require_login, only: [:index]
    def index
        @routines = Routine.all
    end

    def new
        @routine = Routine.new
    end

    def create        
        @routine = current_user.routines.create(routine_params)
        if @routine.save
            redirect_to routine_path(@routine)
        else
            render :new
        end
    end

    def show
    end
  
    def edit
    end
  
    def update
        @routine.update(routine_params)
        if @routine.save
            redirect_to routine_path(@routine)
        else
            render :edit
        end
    end

    def destroy
        @routine.delete
        redirect_to routines_path
    end

    private
    def find_routine
        @routine = Routine.find_by(id: params[:id])
    end

    def routine_params
        params.require(:routine).permit(:name, exercise_ids:[])        
    end
end
