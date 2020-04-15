class Category < ApplicationRecord
  has_many :tests

  default_scope { order(title: :asc) }

  def self.list
    all.pluck(:title, :id)
  end

end
