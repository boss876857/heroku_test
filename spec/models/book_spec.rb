# unit testing

require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with valid values" do
    book = Book.new(title: "Test Book", author: "Jeremy", price: "1", published_date: Date.today)
    expect(book).to be_valid
  end

  it "is invalid with invalid title" do
    book = Book.new(title: "", author: "Jeremy", price: "1", published_date: Date.today)
    expect(book).not_to be_valid
  end
  
  it "is invalid with invalid author" do
    book = Book.new(title: "Test Book", author: "", price: "1", published_date: Date.today)
    expect(book).not_to be_valid
  end
  
  it "is invalid with invalid price" do
    book = Book.new(title: "Test Book", author: "Jeremy", price: "?", published_date: Date.today)
    expect(book).not_to be_valid
  end
  
  it "is invalid with invalid published date" do
    book = Book.new(title: "Test Book", author: "Jeremy", price: "1", published_date: "?")
    expect(book).not_to be_valid
  end
end