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
        @school_class = SchoolClass.find_or_create_by(class_params(:title, :room_number))
      #  @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
    end

    def update
        @school_class.update(class_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private

        def class_params(*args)
            params.require(:school_class).permit(*args)
        end

        def find_instance
            @school_class = SchoolClass.find(params[:id])
        end

end
