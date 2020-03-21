class SchedulesController < ApplicationController
  before_action :set_target_schedule, only: %i[edit update show destroy]

  def index
    @schedules = params[:tag_id].present? ? Tag.find(params[:tag_id]).schedules : Schedule.all
    @schedules = @schedules.page(params[:page])
  end

  def new
    @schedule = Schedule.new(flash[:schedule])
  end

  def create
    schedule = Schedule.new(schedule_params)
    if schedule.save
      flash[:notice] = "「#{schedule.title}」のスケジュールを新規作成しました。"
      redirect_to schedule
    else
      redirect_to new_schedule_path, flash: {
        schedule: schedule,
        error_messages: schedule.errors.full_messages
       }
    end
  end

  def show
    @comment = Comment.new(schedule_id: @schedule.id)
  end

  def edit

  end

  def update
    if @schedule.update(schedule_params)
      redirect_to schedule_path, flash: { notice: "スケジュールを編集しました。" }
    else
      redirect_to edit_schedule_path, flash: {
        schedule: @schedule,
        error_messages: @schedule.errors.full_messages
       }
    end
  end

  def destroy
    @schedule.destroy
    redirect_to schedules_path, flash: { notice: "「#{@schedule.title}」のスケジュールを削除しました。"}
  end

  private

    def schedule_params
      params.require(:schedule).permit(:name, :title, :body, :deadline, :complete, tag_ids: [])
    end

    def set_target_schedule
      @schedule = Schedule.find(params[:id])
    end
end
