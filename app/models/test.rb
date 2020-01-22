class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :test_users
  has_many :users, through: :test_users

  def self.category_tests(title)
    joins('JOIN categories ON categories.id = tests.category_id').where('categories.title = ?', title)
  end
end
