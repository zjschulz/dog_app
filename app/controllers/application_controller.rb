class ApplicationController < ActionController::Base

    def current_user
        User.find_by(id: session[:user_id])
    end

    def redirect_if_not_logged_in
          redirect_to dogs_path unless logged_in?
      end

    def logged_in?
        !!current_user
    end

    def log_in(user)
        session[:user_id] = user.id
    end

end
