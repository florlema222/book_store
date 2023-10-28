class Api::V1::BooksController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_book, only: %i[show update destroy]

  def index
    if params[:title].present?
      @books = Book.where("title ILIKE ?", "%#{params[:title]}%")
      if @books
        render json: @books
      else
        render json: { error: "No books were found with that title" }, status: :not_found
      end

    elsif params[:min_price].present? && params[:max_price].present?
      @books = Book.where("price >= ? AND price <= ?", params[:min_price], params[:max_price])
      if @books
        render json: @books
      else
        render json: { error: "No books were found with that price range" }, status: :not_found
      end
    elsif params[:author_name].present?
      author = Author.find_by("first_name ILIKE ? OR last_name ILIKE ?", "%#{params[:author_name]}%", "%#{params[:author_name]}%")
      if author
        @books = Book.where(author_id: author.id)
        render json: @books
      else
        render json: { error: "No books were found by that author" }, status: :not_found
      end
    else
      @books = Book.all
      render json: @books
    end
  end

  def show
    render json: @book
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    render json: @book.destroy
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author_id, :isbn, :date_of_publication, :review, :price, :publisher_id)
  end

  private


end
