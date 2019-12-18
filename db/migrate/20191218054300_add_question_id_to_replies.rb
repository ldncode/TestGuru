class AddQuestionIdToReplies < ActiveRecord::Migration[6.0]
  def change
    add_column :replies, :question_id, :integer
  end
end
