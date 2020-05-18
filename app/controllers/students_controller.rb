class StudentsController < ApplicationController

    before_action :find_instance, only: [:show, :edit, :update]
    before_action :find_class_ids, only: [:new, :edit]

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end
    
    def create
        @student = Student.find_or_create_by(student_params(:first_name, :last_name, :school_class_id))
        #  @school_class.save
        redirect_to student_path(@student)
    end

    def edit
    end

    def update
        @student.update(student_params(:first_name, :last_name, :school_class_id))
        redirect_to student_path(@student)
    end

    private

        def student_params(*args)
            params.require(:student).permit(*args)
        end

        def find_class_ids
            @class_ids = SchoolClass.all.map { |sc| [sc.title, sc.id] } 
        end

        def find_instance
            @student = Student.find(params[:id])
        end


end
