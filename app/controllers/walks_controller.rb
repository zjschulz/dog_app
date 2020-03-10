class WalksController < ApplicationController

    def index
        @volunteer = Volunteer.find_by(id: params[:volunteer_id])
    end

    def new
        
    end

    def create
        
    end

end
