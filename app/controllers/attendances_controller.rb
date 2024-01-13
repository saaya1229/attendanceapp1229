class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update]
  def index
    @attendances = Attendance.all
  end

  def show
  end

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to attendance_path(@attendance), notice: '保存しました'
    else
      flash.now[:error] = '保存に失敗しました'
      render :new
    end
  end

  def edit
  end

  def update
    if @attendance.update(attendance_params)
      redirect_to attendance_path(@attendance), notice: '更新しました'
    else
      flash.now[:error] = '更新に失敗しました'
      render :edit
    end
  end

  def destroy
    attendance = Attendance.find(params[:id])
    attendance.destroy!
    redirect_to root_path, notice: '削除しました'
  end

  private
  def attendance_params
    params.require(:attendance).permit(
      :title,
      :start_time,
      :end_time,
      :break_time,
      :content
    )
  end


  def set_attendance
    @attendance = Attendance.find(params[:id])
  end
end