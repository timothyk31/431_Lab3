# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
    Book.create!([
        {
            title: "The Great Gatsby",
            author: "F. Scott Fitzgerald",
            price: 12.49,
            published_date: "1925-04-10"
        },
        {
            title: "To Kill a Mockingbird",
            author: "Harper Lee",
            price: 9.99,
            published_date: "1960-07-11"
        },
        {
            title: "1984",
            author: "George Orwell",
            price: 8.99,
            published_date: "1949-06-08"
        },
        {
            title: "Pride and Prejudice",
            author: "Jane Austen",
            price: 7.99,
            published_date: "1813-01-28"
        },
        {
            title: "The Catcher in the Rye",
            author: "J.D. Salinger",
            price: 6.99,
            published_date: "1951-07-16"
        }
    ])
elsif Rails.env.test?
    Book.create!([
        {
            title: "Test Book 1",
            author: "Test Author 1",
            price: 0.99,
            published_date: "2000-01-01"
        },
        {
            title: "Test Book 2",
            author: "Test Author 2",
            price: 1.99,
            published_date: "2001-01-01"
        },
        {
            title: "Test Book 3",
            author: "Test Author 3",
            price: 2.99,
            published_date: "2002-01-01"
        },
        {
            title: "Test Book 4",
            author: "Test Author 4",
            price: 3.99,
            published_date: "2003-01-01"
        },
        {
            title: "Test Book 5",
            author: "Test Author 5",
            price: 4.99,
            published_date: "2004-01-01"
        }
    ])
elsif Rails.env.production?
    Book.create!([
        {
            title: "Production Book 1",
            author: "Prod Author 1",
            price: 15.99,
            published_date: "2010-01-01"
        },
        {
            title: "Production Book 2",
            author: "Prod Author 2",
            price: 20.99,
            published_date: "2011-01-01"
        },
        {
            title: "Production Book 3",
            author: "Prod Author 3",
            price: 25.99,
            published_date: "2012-01-01"
        },
        {
            title: "Production Book 4",
            author: "Prod Author 4",
            price: 30.99,
            published_date: "2013-01-01"
        },
        {
            title: "Production Book 5",
            author: "Prod Author 5",
            price: 35.99,
            published_date: "2014-01-01"
        }
    ])
end
