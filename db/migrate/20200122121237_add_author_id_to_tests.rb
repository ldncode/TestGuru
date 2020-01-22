class AddAuthorIdToTests < ActiveRecord::Migration[6.0]
  def change
    change_table :tests do |t|
      t.references :author, index: true, foreign_key: { to_table: 'users' }
    end
  end
end
