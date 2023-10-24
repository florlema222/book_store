json.extract! book, :id, :title, :author_id, :isbn, :date_of_publication, :review, :price, :publisher_id, :created_at, :updated_at
json.url book_url(book, format: :json)
