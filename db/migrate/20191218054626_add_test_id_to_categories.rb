class AddTestIdToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :test_id, :integer
  end
end
