class AddRepliesAddColumnConstraint < ActiveRecord::Migration[6.0]
  def change
    add_column(:replies, :correct, :boolean, default: false)
  end
end
