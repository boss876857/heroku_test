# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.create!([
  { title: "Test Book 1", author: "Jeremy", price: 15, published_date: Date.today },
  { title: "Test Book 2", author: "Jeremy", price: 25, published_date: Date.today },
  { title: "Test Book 3", author: "Jeremy", price: 35, published_date: Date.today },
  { title: "Test Book 4", author: "Jeremy", price: 45, published_date: Date.today },
  { title: "Test Book 5", author: "Jeremy", price: 55, published_date: Date.today },
  { title: "Test Book only in Test", author: "New", price: 1, published_date: Date.today }
])