class CreateTestUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :test_users do |t|
      t.integer :test_id
      t.integer :user_id

      t.timestamps
    end
  end
end
