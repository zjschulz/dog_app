class WalksController < ApplicationController

    def index
        pull_volunteer
    end

    def new
        pull_volunteer
    end

    def create
        
    end

    private

    def pull_volunteer
        @volunteer ||= Volunteer.find_by(id: params[:volunteer_id])
    end


end
