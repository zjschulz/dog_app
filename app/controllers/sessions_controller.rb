class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if !@user
            @error = "Username invalid. Please try again."
            render :new
        elsif !@user.authenticate(params[:password])
            @error = "Password invalid. Please try again."
            render :new
        else 
            log_in(@user)
            redirect_to volunteers_path
        end
    end

    def destroy
        session.clear
        redirect_to dogs_path
    end

end