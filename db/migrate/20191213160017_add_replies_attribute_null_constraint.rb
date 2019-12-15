class AddRepliesAttributeNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:replies, :body, false)
    add_column(:replies, :correct, :boolean, default: false)
  end
end
