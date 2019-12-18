class AddCategoriesAttributeNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:categories, :title, false)
  end
end
