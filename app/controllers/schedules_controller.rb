class SchedulesController < ApplicationController
  def index
    # 一覧ページにDBに保存しているデータを表示するために全件取得
    # あとでページネーションの処理を記述
    @schedules = Schedule.all
    # @schedule = Schedule.id
  end

  def new
    @schedule = Schedule.new
  end

  def create
    Schedule.create(schedule_params)
  end

  private

    def schedule_params
      params.require(:schedule).permit(:name, :title, :body, :deadline, :complete)
    end
end
