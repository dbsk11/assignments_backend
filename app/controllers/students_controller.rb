class StudentsController < ApplicationController

  # GET /students
  def index
    @students = Student.all
    render json: @students
  end

  # GET /students/1
  def show
    render json: @student
  end
end
