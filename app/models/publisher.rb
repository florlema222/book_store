class Publisher < ApplicationRecord
  has_many :books
  searchkick
end
