class SchedulesController < ApplicationController
  before_action :set_target_schedule, only: %i[edit update show destroy]

  def index
    # 一覧ページにDBに保存しているデータを表示するために全件取得
    @schedules = Schedule.page(params[:page])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    schedule = Schedule.create(schedule_params)
    flash[:notice] = "「#{schedule.title}」のスケジュールを新規作成しました。"
    redirect_to schedule
  end

  def show

  end

  def edit

  end

  def update
    @schedule.update(schedule_params)

    redirect_to schedule
  end

  def destroy
    @schedule.delete
    redirect_to schedules_path, flash: { notice: "「#{@schedule.title}」のスケジュールを削除しました。"}
  end

  private

    def schedule_params
      params.require(:schedule).permit(:name, :title, :body, :deadline, :complete)
    end

    def set_target_schedule
      @schedule = Schedule.find(params[:id])
    end
end
