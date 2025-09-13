class RemoveExtraColumnsFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :author, :string
    remove_column :books, :price, :decimal
    remove_column :books, :published_date, :date
  end
end
