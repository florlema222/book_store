class Publisher < ApplicationRecord
  has_many :books
  validates :name, presence: true
  validates :name, length: { maximum: 40 }
  #no hay validador de fecha porque no me pareció necesario, viene formateado como fecha desde el formulario
end
