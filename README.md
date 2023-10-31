# Book Query with Authors and Publishers
[BookStoreURL](https://bookstore-1tot.onrender.com)

## Description
This project is a web application that allows you to search and query books from a database. In addition to book details, the application displays information about related authors and publishers. It is a useful tool for searching for books and obtaining additional information about the authors and publishers behind them.

## Key Features
- Book search by title.
- Filtering books by author and publisher.
- Viewing book details, including ISBN, publication date, reviews, and price.
- Detailed information about authors, including first and last names.
- Publisher data.

## Usage Guide
1. Enter a keyword in the search field and select a category (e.g., "All," "Author," or "Publisher").
2. Click "Search" to get a list of books that match your criteria.
3. Explore the results and click on a book to view additional details.
4. You can click on the author's or publisher's name to get more information about them.
5. To edit, delete, or create authors, books, and/or publishers, the user must be registered.

## USER CREATION CODE: 11115
The code to successfully create a user is 11115; email and password are individual. In a realistic app, this code would not be in the readme and would be only for those who are allowed to edit, create, and delete books, authors, and publishers.

# Book Query API

## Introduction
The application offers an API to access book information. This API allows you to make queries and obtain detailed data about books and their relationships with authors and publishers.

## Basic Usage
- **Base Endpoint**: `https://bookstore-1tot.onrender.com/api/v1`

### Book Query
- **Endpoint**: `/books`
- **HTTP Method**: `GET`
- **Search Parameters**:
  - `title` (optional): Filter books by title.
  - `min_price` and `max_price` (optional): Filter books by price range.
  - `author_name` (optional): Search books by author name.

**Example Request**:

GET (https://bookstore-1tot.onrender.com/api/v1/books?title=Harry_Potter)

### Pagination in the API
The API offers pagination to help you navigate through large datasets:

- `page` (optional): Allows you to specify the page you want to view.

**Example Request with Pagination**:
(http://bookstore-1tot.onrender.com/api/v1/books?page=2)

## Author
This project was created by [Florencia Lema] and is available at [https://github.com/florlema222/book_store].

Thank you for checking out the application!
