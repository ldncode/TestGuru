class AddColumnToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :timer, :float, null: false, default: 15
  end
end
