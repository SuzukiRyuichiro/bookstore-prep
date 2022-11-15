class BooksController < ApplicationController
  def index
    # @books = Book.all
    @books = Book.eager_load(:author).all
    # @books = Book.preload(:author).all
  end
end
