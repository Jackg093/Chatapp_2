class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
 
  def create
  if current_user
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      flash[:success] = 'Your comment was successfully posted!'
    else
      flash[:error] = 'Your comment cannot be saved.'
    end
  end
  redirect_to root_url

private
 
def comment_params
  params.require(:comment).permit(:body)
end
end