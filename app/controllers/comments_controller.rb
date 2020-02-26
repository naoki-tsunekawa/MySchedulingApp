class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] = "コメントを保存しました。"
      redirect_to comment.schedule
    else
      flash[:comment] = comment_params
      flash[:error_messages] = comment.error.full_messages
      redirect_back fallback_location: comment.schedule
    end
  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:schedule_id, :name, :comment)
    end
end
