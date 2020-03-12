class DogsController < ApplicationController

    def index
        @dogs = Dog.all
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

end
