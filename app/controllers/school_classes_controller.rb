class SchoolClassesController < ApplicationController

    before_action :which_school_class

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    private
    def which_school_class
        @school_class = SchoolClass.find(params[:id])
    end

end
