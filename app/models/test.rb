class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :test_users
  has_many :users, through: :test_users

  def self.category_tests(title)
    Category.joins('JOIN categories ON tests.category_id = categories.id')
        .where(categories: { title: title })
        .order(title: :desc)
        .pluck(:title)
  end
end
