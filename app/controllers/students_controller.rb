class StudentsController < ApplicationController

  def index
    students = Student.all.where(last_name: params[:first_name])
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
