# integration testing

require 'rails_helper'

RSpec.describe "TestingBookCollections", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "adds a book successfully and shows flash notice" do
    visit new_book_path
    fill_in "Title", with: "Test Book"
    fill_in "Author", with: "Jeremy"
    fill_in "Price", with: 1
    fill_in "Published date", with: "2025-09-05"
    click_button "Create Book"

    expect(page).to have_content("Book added successfully!")
  end

  it "adding book fails and shows flash notice (invalid title)" do
    visit new_book_path
    fill_in "Title", with: ""
    fill_in "Author", with: "Jeremy"
    fill_in "Price", with: 1
    fill_in "Published date", with: "2025-09-05"
    click_button "Create Book"

    expect(page).to have_content("Error when adding book!")
  end
  
  it "adding book fails and shows flash notice (invalid author)" do
    visit new_book_path
    fill_in "Title", with: "Test Book"
    fill_in "Author", with: ""
    fill_in "Price", with: 1
    fill_in "Published date", with: "2025-09-05"
    click_button "Create Book"

    expect(page).to have_content("Error when adding book!")
  end
  
  it "adding book fails and shows flash notice (invalid price)" do
    visit new_book_path
    fill_in "Title", with: "Test Book"
    fill_in "Author", with: "Jeremy"
    fill_in "Price", with: "?"
    fill_in "Published date", with: "2025-09-05"
    click_button "Create Book"

    expect(page).to have_content("Error when adding book!")
  end
  
  it "adding book fails and shows flash notice (invalid published date)" do
    visit new_book_path
    fill_in "Title", with: "Test Book"
    fill_in "Author", with: "Jeremy"
    fill_in "Price", with: 1
    fill_in "Published date", with: "?"
    click_button "Create Book"

    expect(page).to have_content("Error when adding book!")
  end

end
