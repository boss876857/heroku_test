require 'rails_helper'

RSpec.describe "user_books/index", type: :view do
  before(:each) do
    assign(:user_books, [
      UserBook.create!(
        user_id: "User",
        integer: "Integer",
        book_id: 2
      ),
      UserBook.create!(
        user_id: "User",
        integer: "Integer",
        book_id: 2
      )
    ])
  end

  it "renders a list of user_books" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("User".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Integer".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
