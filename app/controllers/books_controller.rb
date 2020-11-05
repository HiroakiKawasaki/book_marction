class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_book, only: :show

  def index
    @books = Book.all.order('created_at DESC')
  end

  def new
    @book_plan = BookPlan.new
  end

  def create
    @book_plan = BookPlan.new(book_plan_params)
    if @book_plan.valid?
      @book_plan.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def set_book
    @book = Book.find(params[:id])
  end

  private

  def book_plan_params
    params.require(:book_plan).permit(:title, :genre_id, :explanation, :user_id, :reason, :time, :place, :partner, :thing, :todo, :achievement_id, :book_id).merge(user_id: current_user.id)
  end
end
