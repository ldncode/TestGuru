class AddAnswersAttributeDefaultConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:answers, :correct, false)
  end
end
