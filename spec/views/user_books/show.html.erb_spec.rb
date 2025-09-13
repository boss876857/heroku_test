require 'rails_helper'

RSpec.describe "user_books/show", type: :view do
  before(:each) do
    assign(:user_book, UserBook.create!(
      user_id: "User",
      integer: "Integer",
      book_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Integer/)
    expect(rendered).to match(/2/)
  end
end
