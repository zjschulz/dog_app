class VolunteersController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    ef index
        @volunteers = current_user.volunteers
    end

    def new
        @volunteer = Volunteer.new
    end

    def create
        @volunteer = current_user.volunteers.build(volunteer_params)
        if @volunteer.save
            redirect_to new_volunteer_walk_path(@volunteer)
        else
            render :new
        end
    end

    private

    def volunteer_params
        params.require(:volunteer).permit(:name)
    end

end
