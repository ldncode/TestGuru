class AddUniqueIndexToTests < ActiveRecord::Migration[6.0]
  def change
    add_index :tests, [:title, :level], unique: true
  end
end
