class Author < ApplicationRecord
  has_many :books
  searchkick
end
