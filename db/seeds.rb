# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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

publisher1 = Publisher.create(
  name: 'Penguin Random House'
)

publisher2 = Publisher.create(
  name: 'Scholastic Corporation'
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
