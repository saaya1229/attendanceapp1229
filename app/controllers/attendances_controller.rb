class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def show
    @attendance = Attendance.find(params[:id])
  end

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to attedance_path(@attendance)
    else
      render :new
    end
  end

  private
  def attendance_params
    params.require(:attendance).permit(:title, :start_time, :end_time, :break_time, :content)
  end
end