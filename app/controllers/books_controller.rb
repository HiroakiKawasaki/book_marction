class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :create, :edit, :update, :destroy]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all.order('created_at DESC')
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.valid?
      @book.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @comment = Comment.new
    @comments = @book.comments.includes(:user)
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path
    else
      render 'edit'
    end
  end

  def destroy
    if @book.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end

  def set_book
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre_id, :explanation, :user_id, :reason, :time, :place, :partner, :thing, :todo, :achievement_id, :book_id).merge(user_id: current_user.id)
  end
end
