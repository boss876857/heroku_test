# unit testing for seed

require 'rails_helper'

RSpec.describe Book, type: :model do
  it "has seeded books in the test db" do
    books = Book.all
    expect(books.count).to be >= 6
  end
end