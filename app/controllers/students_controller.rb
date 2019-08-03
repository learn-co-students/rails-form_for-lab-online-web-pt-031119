class StudentsController < ApplicationController
    
   def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
   end



   def new
      binding.pry
   end

   private
 
   def post_params
     params.require(:student).permit(:first_name, :last_name)   #This privat lass is defining the :school_class and permiting only the room number and title 
   
   end





end