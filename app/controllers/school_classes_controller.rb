class SchoolClassesController < ApplicationController

    before_action :find_instance, only: [:show, :edit, :update]

    def index
        @school_classes = SchoolClass.all
    end

    def show
    end

    def new
        @school_class = SchoolClass.new
    end
    
    def create
    end

    def edit
    end

    def update
    end

    private

        def class_params(*args)
            params.require(:school_class).permit(*args)
        end

        def find_instance
            @school_class = SchoolClass.find(params[:id])
        end

end
