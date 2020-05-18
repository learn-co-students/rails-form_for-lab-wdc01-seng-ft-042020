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


# class SchoolClassesController < ApplicationController
#      before_action :find_id, only: [:show, :edit, :update]
#     def index
#       @schools = SchoolClass.all
#     end
  
#     def show
#       # @school = SchoolClass.find(params[:id])
#     end

#     def new
#         @school = SchoolCLass.new
#     end

#     def create
# 		@school = SchoolClass.create(post_params(:title, :room_number))
# 		@school.save
# 		redirect_to schools_path(@school)
#  	end

#     def edit
# 		# @school = SchoolCLass.find(params[:id])
# 	end

# 	def update
# 	  # @school = SchoolClass.find(params[:id])
# 	  @school.update(post_params(:title, :room_number))
# 	#   @post.update(title: params[:title], description: params[:description])
# 	  redirect_to schools_path(@post)
#     end
    
#     private
     
#       def post_params(*args)
#           params.require(:school).permit(*args)
#       end

#       def find_id
#          @school = SchoolClass.find(params[:id])
#       end

# end