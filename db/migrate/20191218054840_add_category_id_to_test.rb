class AddCategoryIdToTest < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :category_id, :integer
    add_column :tests, :user_id, :integer
  end
end
