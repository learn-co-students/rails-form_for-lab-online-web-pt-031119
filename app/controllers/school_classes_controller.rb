require 'pry'

class SchoolClassesController < ApplicationController
     
    def create
        @school = SchoolClass.new(post_params)
       
        @school.save
        
        redirect_to school_class_path(@school)
    end

  def new
     @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(post_params)
    redirect_to school_class_path(@school_class)
  end


    private
 
    def post_params
      params.require(:school_class).permit(:room_number, :title)   #This privat lass is defining the :school_class and permiting only the room number and title 
    
    end



end