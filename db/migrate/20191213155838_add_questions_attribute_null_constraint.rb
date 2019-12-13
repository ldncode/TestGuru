class AddQuestionsAttributeNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:questions, :body, false)
    add_column(:questions, :correct, :boolean, default: false)
  end
end
