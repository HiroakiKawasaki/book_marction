class BooksController < ApplicationController
  def index
  end

  def new
    @book_plan = BookPlan.new
  end

  def create
    @book_plan = BookPlan.new(book_plan_params)
    if @book_plan.valid?
      book_plan.save
      redirect_to root_path
    else
      render 'new'
    end
  end
end

private

def book_plan_params
  params.require(:book_plan).permit(:title, :genre_id, :explanation, :user_id, :reason, :when, :where, :whom, :what, :how, :achievement_id)
 end
