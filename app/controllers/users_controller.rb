class UsersController < ApplicationController
    before_action :require_login, except[:new, :create]
    def show
        @user = User.find_by(:id => params[:id])
    end

    

    private
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
