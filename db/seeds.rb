# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Book.destroy_all

Publisher.destroy_all

Author.destroy_all

author1 = Author.create(
  first_name: 'George',
  last_name: 'Orwell',
  date_of_birth: '1903-06-25',
  about: 'Author of "1984" and "Animal Farm"',
  nationality: 'British'
)

author2 = Author.create(
  first_name: 'JK',
  last_name: 'Rowling',
  date_of_birth: '1965-07-31',
  about: 'Best known for "Harry Potter" series',
  nationality: 'British'
)

# Autor 3
author3 = Author.create(
  first_name: 'William',
  last_name: 'Shakespeare',
  date_of_birth: '1564-04-26',
  about: 'Famoso dramaturgo y poeta inglés',
  nationality: 'Británico'
)

# Autor 4
author4 = Author.create(
  first_name: 'Jane',
  last_name: 'Austen',
  date_of_birth: '1775-12-16',
  about: 'Autora de "Orgullo y prejuicio"',
  nationality: 'Británica'
)

# Autor 5
author5 = Author.create(
  first_name: 'Gabriel',
  last_name: 'García Márquez',
  date_of_birth: '1927-03-06',
  about: 'Autor de "Cien años de soledad"',
  nationality: 'Colombiano'
)

# Autor 6
author6 = Author.create(
  first_name: 'F. Scott',
  last_name: 'Fitzgerald',
  date_of_birth: '1896-09-24',
  about: 'Autor de "El Gran Gatsby"',
  nationality: 'Estadounidense'
)

# Autor 7
author7 = Author.create(
  first_name: 'Leo',
  last_name: 'Tolstoy',
  date_of_birth: '1828-09-09',
  about: 'Autor de "Guerra y Paz"',
  nationality: 'Ruso'
)

# Autor 8
author8 = Author.create(
  first_name: 'Agatha',
  last_name: 'Christie',
  date_of_birth: '1890-09-15',
  about: 'Famosa autora de novelas de misterio',
  nationality: 'Británica'
)



publisher1 = Publisher.create(
  name: 'Penguin Random House'
)

publisher2 = Publisher.create(
  name: 'Scholastic Corporation'
)

publisher3 = Publisher.create(
  name: 'HarperCollins Publishers'
)

publisher4 = Publisher.create(
  name: 'Simon & Schuster'
)

Book.create(
  title: '1984',
  author: author1,
  isbn: '9780451524935',
  date_of_publication: '1949-06-08',
  review: 'A dystopian classic',
  price: 12.99,
  publisher: publisher1
)

Book.create(
  title: 'Animal Farm',
  author: author1,
  isbn: '9780451526342',
  date_of_publication: '1945-08-17',
  review: 'A political allegory',
  price: 11.99,
  publisher: publisher1
)

Book.create(
  title: 'Harry Potter and the Sorcerer\'s Stone',
  author: author2,
  isbn: '9780590353427',
  date_of_publication: '1997-06-26',
  review: 'The start of an epic series',
  price: 14.99,
  publisher: publisher2
)

Book.create(
  title: 'Harry Potter and the Chamber of Secrets',
  author: author2,
  isbn: '9780439064866',
  date_of_publication: '1998-06-02',
  review: 'More adventures at Hogwarts',
  price: 15.99,
  publisher: publisher2
)

Book.create(
  title: 'Romeo and Juliet',
  author: author3,
  isbn: '9780140707358',
  date_of_publication: '1597-01-22',
  review: 'A classic tragedy of young love',
  price: 9.99,
  publisher: publisher1
)

Book.create(
  title: 'Hamlet',
  author: author3,
  isbn: '9780140707327',
  date_of_publication: '1603-01-22',
  review: 'The tragedy of Prince Hamlet',
  price: 10.99,
  publisher: publisher2
)

Book.create(
  title: 'Macbeth',
  author: author3,
  isbn: '9780140710921',
  date_of_publication: '1623-01-22',
  review: 'A dark and bloody tragedy',
  price: 11.99,
  publisher: publisher2
)


Book.create(
  title: 'Harry Potter and the Half-Blood Prince',
  author: author4,
  isbn: '9780439785969',
  date_of_publication: '2005-07-16',
  review: 'The penultimate book in the series',
  price: 18.99,
  publisher: publisher3
)

Book.create(
  title: 'Harry Potter and the Deathly Hallows',
  author: author4,
  isbn: '9780545010221',
  date_of_publication: '2007-07-21',
  review: 'The epic conclusion to the series',
  price: 19.99,
  publisher: publisher3
)

Book.create(
  title: 'Fantastic Beasts and Where to Find Them',
  author: author4,
  isbn: '9780545850568',
  date_of_publication: '2001-03-12',
  review: 'A guide to magical creatures',
  price: 12.99,
  publisher: publisher4
)

Book.create(
  title: 'Cien años de soledad',
  author: author5,
  isbn: '9780307350480',
  date_of_publication: '1967-05-30',
  review: 'La obra maestra del realismo mágico',
  price: 14.99,
  publisher: publisher1
)

Book.create(
  title: 'El amor en los tiempos del cólera',
  author: author5,
  isbn: '9780307389732',
  date_of_publication: '1985-03-28',
  review: 'Una historia de amor apasionada',
  price: 12.99,
  publisher: publisher1
)

Book.create(
  title: 'Crónica de una muerte anunciada',
  author: author5,
  isbn: '9780307387264',
  date_of_publication: '1981-03-27',
  review: 'Una novela de intrigas y fatalidades',
  price: 11.99,
  publisher: publisher2
)

Book.create(
  title: 'El Gran Gatsby',
  author: author6,
  isbn: '9780142437513',
  date_of_publication: '1925-04-10',
  review: 'La crónica de los locos años veinte',
  price: 10.99,
  publisher: publisher1
)

Book.create(
  title: 'Suave es la noche',
  author: author6,
  isbn: '9788433931587',
  date_of_publication: '1934-04-19',
  review: 'Una historia de decadencia y desilusión',
  price: 11.99,
  publisher: publisher2
)

Book.create(
  title: 'El último magnate',
  author: author6,
  isbn: '9780140181287',
  date_of_publication: '1941-11-11',
  review: 'La obra póstuma del autor',
  price: 9.99,
  publisher: publisher3
)

Book.create(
  title: 'Guerra y Paz',
  author: author7,
  isbn: '9780143039990',
  date_of_publication: '1869-02-25',
  review: 'Una epopeya sobre la historia rusa',
  price: 16.99,
  publisher: publisher1
)

Book.create(
  title: 'Anna Karenina',
  author: author7,
  isbn: '9780143035008',
  date_of_publication: '1877-01-28',
  review: 'Una exploración de la moralidad y el amor',
  price: 14.99,
  publisher: publisher2
)

Book.create(
  title: 'Resurrección',
  author: author7,
  isbn: '9781406933620',
  date_of_publication: '1899-09-01',
  review: 'Una historia sobre la búsqueda de la redención',
  price: 12.99,
  publisher: publisher1
)

Book.create(
  title: 'Asesinato en el Orient Express',
  author: author8,
  isbn: '9780007119318',
  date_of_publication: '1934-01-01',
  review: 'Un clásico de misterio de Hércules Poirot',
  price: 11.99,
  publisher: publisher3
)

Book.create(
  title: 'Diez negritos',
  author: author8,
  isbn: '9780007136834',
  date_of_publication: '1939-03-06',
  review: 'Un thriller psicológico en una isla aislada',
  price: 10.99,
  publisher: publisher4
)

Book.create(
  title: 'El asesinato de Roger Ackroyd',
  author: author8,
  isbn: '9788408024163',
  date_of_publication: '1926-06-19',
  review: 'Una obra maestra del crimen y el suspenso',
  price: 12.99,
  publisher: publisher1
)
