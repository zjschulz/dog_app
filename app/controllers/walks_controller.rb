class WalksController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :pull_volunteer, only: [:index, :new]

    def index
        redirect_if_invalid
    end

    def new
        redirect_if_invalid
        @walk = Walk.new
    end

    def create
        @volunteer = Volunteer.find_by(id: params[:walk][:volunteer_id])
        if user_authorized?
            @walk = Walk.new(walk_params)
            if @walk.save
                redirect_to volunteer_walks_path(@walk.volunteer)
            else
                render :new
            end
        else
            redirect_to volunteers_path
        end

    end

    private

    def pull_volunteer
        @volunteer ||= Volunteer.find_by(id: params[:volunteer_id])
    end

    def walk_params
        params.require(:walk).permit(:dog_id, :duration, :date, :volunteer_id)
    end

    def user_authorized?
        @volunteer.user && (@volunteer.user.id == current_user.id)
    end

    def redirect_if_invalid
        if @volunteer.nil? || !user_authorized?
            redirect_to volunteers_path
        end
    end

end
