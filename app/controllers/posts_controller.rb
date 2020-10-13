class PostsController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to post_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    book.destroy
    redirect_to posts_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
