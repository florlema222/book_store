class SearchController < ApplicationController
  skip_before_action :authenticate_user!

  def index
      if params[:search].present?
        if params[:category] == "Author"
          @results = Book.includes(:author).joins(:author).where("authors.first_name @@ ? OR authors.last_name @@ ?", "%#{params[:search]}%", "%#{params[:search]}%")
        elsif params[:category] == "Publisher"
          @results = Book.includes(:publisher).joins(:publisher).where("publishers.name @@ ?", "%#{params[:search]}%")
        else
          @results = Book.includes(:author, :publisher)
              .joins(:author, :publisher)
              .where("books.title @@ ? OR books.isbn LIKE ? OR authors.first_name @@ ? OR authors.last_name @@ ? OR publishers.name @@ ?",
                     "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")

        end
      else
        @results = Book.all
      end
  end


end

=begin
        respond_to do |format|
        format.html
        format.json { render json: @results }
        end
        @results = Book.where("title @@ ? OR isbn LIKE ? OR review @@ ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")

=end
