class AttendancesController < ApplicationController
  def index
    @attendance = Attendance.first
  end
end