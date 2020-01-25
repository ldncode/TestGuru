class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :test_users
  has_many :users, through: :test_users
  belongs_to :author, class_name: 'User'


  def self.category_tests(title)
    joins(:category)
        .where(categories: { title: title })
        .order(title: :desc)
        .pluck(:title)
  end
end
