class AddTestsAttributeNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:tests, :title, false)
    change_column_null(:tests, :level, false)
    change_column_default(:tests, :level, 1)
  end
end
