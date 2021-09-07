class BooksController < ApplicationController
  def index
  end
  def show
  end

  def new
    @topics = Topic.all()
    @authors = Author.all()
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :topic_id, :authorship_id, :cover_url))
    @book.save

    redirect_to '/books/' + @book.id.to_s
  end
end