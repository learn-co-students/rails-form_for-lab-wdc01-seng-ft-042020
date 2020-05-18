class StudentsController < ApplicationController

    before_action :which_student, only: [:show, :edit]

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def show
    end

    def edit

    end

    def update
        @student = Student.update(student_params)
        redirect_to student_path(@student)
    end

    private
    def which_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end
