class BooksController < ApplicationController
  def index
  end
  def show
  end

  def new
    @topics = Topic.all()
    @authors = Author.all()
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
   # @book = Book.new(params.require(:book).permit(:title, :topic_id, :authorship_id[author_id], :cover_url))
    @book.save

    redirect_to '/books/' + @book.id.to_s
  end
  def book_params
    params.require(:book).permit(:title, :topic_id, :cover_url, :author_id)
  end
end