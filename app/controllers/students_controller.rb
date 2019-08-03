class StudentsController < ApplicationController
    
   def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
   end



   def new
      @student = Student.new
   end

   def show
    @student = Student.find(params[:id])
   end

   def edit
    @student = Student.find(params[:id])
   end
   
   def update
    @student = Student.find(params[:id])
    @student.update(post_params)
    redirect_to student_path(@student)
  
  end


   private
 
   def post_params
     params.require(:student).permit(:first_name, :last_name)   #This privat lass is defining the :school_class and permiting only the room number and title 
   
   end





end