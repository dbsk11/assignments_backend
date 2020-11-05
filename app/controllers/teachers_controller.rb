class TeachersController < ApplicationController
  before_action :authorized, only: [:stay_logged_in]

  # GET /teachers
  def index
    @teachers = Teacher.all
    render json: @teachers
  end

  # GET /teachers/1
  def show
    @teacher = Teacher.find(params[:id])
    render json: @teacher
  end

  # Teacher Login
  def login
    @teacher = Teacher.find_by(username: params[:username])
    if @teacher && @teacher.authenticate(params[:password])
        wristband = encode_token({teacher_id: @teacher.id})
        render json: {
            teacher: TeacherSerializer.new(@teacher),
            token: wristband
        }
    else
        render json: {error: "Incorrect username and/or password"}
    end 
  end

  def stay_logged_in
    wristband = encode_token({teacher_id: @teacher.id})
    render json: {
      teacher: TeacherSerializer.new(@teacher),
      token: wristband
    }
  end

  
  private

  def teacher_params
    params.permit(:username, :password)
  end

end
