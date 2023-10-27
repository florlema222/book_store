class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher

  validates :title, presence: true
  validates :isbn, uniqueness: true
  validates :date_of_publication, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :author, presence: true
  validates :publisher, presence: true

end
