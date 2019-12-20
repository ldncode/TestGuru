class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column(:users, :user_id, :integer )
  end
end
