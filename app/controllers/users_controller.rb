class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to new_volunteer_path
        else
            render :new
        end
    end

    private

    def user_params
        params.requires(:user).permit(:username, :password, :password_confirmation)
    end

end