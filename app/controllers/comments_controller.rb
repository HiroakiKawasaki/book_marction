class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create
  def create
    @comment = Comment.create(comment_params)
    redirect_to "/books/#{@comment.book.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :user_id, :book_id).merge(user_id: current_user.id, book_id: params[:book_id])
  end
end
