class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def save_student
    @id = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to :students
  end
end
