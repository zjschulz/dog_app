class SessionsController < ApplicationController

    def new

    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @authenticate(params[:password])
    end

    def destroy

    end

    private

    def 
        
    end

end