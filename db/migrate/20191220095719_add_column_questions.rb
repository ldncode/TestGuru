class AddColumnQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column(:questions, :question_id, :integer )
  end
end
