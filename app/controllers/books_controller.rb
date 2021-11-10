class BooksController < ApplicationController

   def top
   end


  def index
     @books = Book.all
     @book = Book.new
  end

  def show
  end

  def create
    @book = Book.new(list_params)
     if @list.save
      redirect_to book_path(@book.id)
     else
      render :index
     end
  end


  def edit
  end


 private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
