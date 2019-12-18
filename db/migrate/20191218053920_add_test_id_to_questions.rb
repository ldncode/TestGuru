class AddTestIdToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :test_id, :integer
  end
end
