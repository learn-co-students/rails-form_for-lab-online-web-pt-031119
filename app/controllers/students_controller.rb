class StudentsController < ApplicationController
  
  def index
    @student = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
	  
	end

	def create

	end

	def update

	end

	def edit

	end
	
end