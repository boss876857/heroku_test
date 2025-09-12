class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to books_path, notice: "Book updated successfully!"
    else
      flash.now[:notice] = "Error when updating book!"
      render :edit
    end
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path, notice: "Book added successfully!"
    else
      flash.now[:notice] = "Error when adding book!"
      render :new
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: "Book deleted successfully!"
  end

  def book_params
    params.require(:book).permit(:title, :author, :price, :published_date)
  end
end
