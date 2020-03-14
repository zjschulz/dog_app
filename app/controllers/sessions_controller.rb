class SessionsController < ApplicationController

    def new
    end

    def create
        if request.env["omniauth.auth"]
            @user = User.find_by(github_uid: request.env["omniauth.auth"]["uid"])
            if @user.nil?
                @user = User.create(username: request.env["omniauth.auth"]["info"]["nickname"], github_uid: request.env["omniauth.auth"]["uid"], password: "github")
            end
                log_in(@user)
                redirect_to volunteers_path
        else
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
    end

    def destroy
        session.clear
        redirect_to login_path
    end

end