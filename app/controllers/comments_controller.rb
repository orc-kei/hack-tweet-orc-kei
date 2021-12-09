class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to hack_path(@comment.hack)
    else
      @hack = @comment.hack
      @comments = @hack.comments
      render "hacks/show"
  end
end

  private
  def comment_params
     params.require(:comment).permit(:content).merge(user_id: current_user.id, hack_id: params[:hack_id])
  end
end
