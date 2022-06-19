class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
  end

  def show
     @book = Book.find(params[:id])  
  end

  def edit
  end
end
