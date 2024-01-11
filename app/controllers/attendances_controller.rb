class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def show
    @attendance = Attendance.find(params[:id])
  end
end