class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        if @dog.save
            redirect_to dogs_path
        else
            render :new
        end
    end

    def longestinspca
        @dogs = Dog.longestinspca
        render :index
    end

    def rottweiler
        @dogs = Dog.rottweiler
        render :index
    end

    def female
        @dogs = Dog.female
        render :index
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :gender, :age, :time_in)
    end

end
