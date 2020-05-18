class SchoolClassesController < ApplicationController

    before_action :which_school_class, only: [:show, :edit, :update]
    def show
    end

    def new
        @school_class = SchoolClass.new
    end

    def edit
    end

    def create
        @school_class = SchoolClass.create(params_school(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class.update(params_school(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private
    def which_school_class
        @school_class = SchoolClass.find(params[:id])
    end

    def params_school(*arg)
        params.require(:school_class).permit(*arg)
    end

end
