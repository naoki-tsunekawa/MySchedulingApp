class SchedulesController < ApplicationController
  def index
  end

  def new
    @schedule = Schedule.new
  end

  def create
    Schedule.create(schedule_params)
  end

  private

    def schedule_params
      params.require(:schedules).permit(:name,:title,:body,:deadline,:compleate)
    end
end
