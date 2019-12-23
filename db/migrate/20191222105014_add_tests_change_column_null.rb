class AddTestsChangeColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :tests, :level, false
    change_column_default :tests, :level, from: nil, to:1
  end
end
