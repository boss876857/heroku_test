class CreateUserBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :user_books do |t|
      t.string :user_id
      t.string :integer
      t.integer :book_id

      t.timestamps
    end
  end
end
