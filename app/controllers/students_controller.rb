class StudentsController < ApplicationController
  before_action :authorized, only: [:stay_logged_in]

  # GET /students
  def index
    @students = Student.all
    render json: @students
  end

  # GET /students/1
  def show
    @student = Student.find(params[:id])
    render json: @student
  end

  # Student Login
  def login
    @student = Student.find_by(username: params[:username])
    if @student && @student.authenticate(params[:password])
      wristband = encode_token({student_id: @student.id})
      render json: {
        student: StudentSerializer.new(@student),
        token: wristband        
      }
    else
      render json: {error: "Incorrect username and/or password"}
    end 
  end

  def stay_logged_in
    wristband = encode_token({student_id: @student.id})
    render json: {
      student: StudentSerializer.new(@student),
      token: wristband
    }
  end

  
  private

  def student_params
      params.permit(:username, :password)
  end
end
