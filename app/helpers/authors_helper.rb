module AuthorsHelper

    def age(date_of_birth)
      return nil if date_of_birth.blank?

      current_year = Time.now.year
      birth_year = date_of_birth.year
      age = current_year - birth_year

      # Comprueba si ya ha pasado el cumpleaños de este año.
      if Time.now < date_of_birth + age.years
        age -= 1
      end

      age
    end
end
