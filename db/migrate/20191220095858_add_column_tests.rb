class AddColumnTests < ActiveRecord::Migration[6.0]
  def change
    add_column(:tests, :test_id, :integer )
  end
end
