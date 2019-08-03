class SchoolClassesController < ApplicationController
  
  def show
		@school_class = School_class.find(params[:id])
	end

	def new
		@School_class = School_class.new
	end

	def create
	  @School_class = School_class.new
	  @School_class.title = params[:title]
	  @School_class.room_number = params[:room_number]
	  @School_class.save
	  redirect_to school_class_path(@school_class)
	end

	def edit
		@school_class = School_class.find(params[:id])
	end

	def update
	  @school_class = School_class.find(params[:id])
	@school_class.update(params.require(:school_class).permit(:title, :room_number))
	  redirect_to school_class_path(@school_class)
	end
  
  
end
