class SearchController < ApplicationController
  def index
      if params[:search].present?
        if params[:category] == "Author"
          @results = Book.joins(:author).where("authors.first_name @@ ? OR authors.last_name @@ ?", "%#{params[:search]}%", "%#{params[:search]}%")
        elsif params[:category] == "Publisher"
          @results = Book.joins(:publisher).where("publishers.name LIKE ?", "%#{params[:search]}%")
        else
          @results = Book.where("title @@ ? OR isbn LIKE ? OR review @@ ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
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
=end
