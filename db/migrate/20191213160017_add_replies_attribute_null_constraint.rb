class AddRepliesAttributeNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:replies, :body, false)
  end
end
