class HomeController < ApplicationController
  def index
    @attendance = Attendance.first
  end

  def about
  end
end