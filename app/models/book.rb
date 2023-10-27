class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher

  validates :title, presence: true
  validates :title, length: { maximum: 255 }

  validates :isbn, uniqueness: true
  validates :isbn, length: { maximum: 20 }

  validates :review, presence: true
  validates :review, length: { maximum: 1000 }

  validates :date_of_publication, presence: true
  #no hay validador de fecha porque no me pareció necesario, viene formateado como fecha desde el formulario
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :author, presence: true
  validates :publisher, presence: true

end
