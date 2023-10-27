class Author < ApplicationRecord
  has_many :books

  validates :first_name, presence: true
  validates :first_name, length: { maximum: 25 }

  validates :last_name, presence: true
  validates :last_name, length: { maximum: 25 }

  validates :date_of_birth, presence: true
  #no hay validador de fecha porque no me pareció necesario, viene formateado como fecha desde el formulario

  validates :about, presence: true
  validates :about, length: { maximum: 1000 }

  validates :nationality, presence: true
  validates :nationality, length: { maximum: 25 }

end
