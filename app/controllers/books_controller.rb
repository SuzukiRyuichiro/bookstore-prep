class BooksController < ApplicationController
  def index
    # @books = Book.all
    # @books = Book.eager_load(:author).all
    # @books = Book.preload(:author).all
    @books = Book.includes(author: { avatar_attachment: :blob }).all
  end
end
