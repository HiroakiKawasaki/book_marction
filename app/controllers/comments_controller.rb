class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create
  def create
    Comment.create(comment_params)
    redirect_to "/tweets/#{comment.tweet.id}"  
  end

  private
  def comment_params
    params.require(:comment).permit(:message).merge(user_id: current_user.id, book_id: params[:book_id])
end
