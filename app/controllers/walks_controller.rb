class WalksController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :validate_volunteer

    def index
        pull_volunteer
    end

    def new
        pull_volunteer
        @walk = Walk.new
    end

    def create
        @volunteer = Volunteer.find_by(id: params[:walk][:volunteer_id])
        @walk = Walk.new(walk_params)
        if @walk.save
            redirect_to volunteer_walks_path(@walk.volunteer)
        else
            render :new
        end
    end

    private

    def pull_volunteer
        @volunteer ||= Volunteer.find_by(id: params[:volunteer_id])
    end

    def walk_params
        params.require(:walk).permit(:dog_id, :duration, :date, :volunteer_id)
    end

    def validate_volunteer
        redirect_to volunteers_path unless pull_volunteer
    end

end
