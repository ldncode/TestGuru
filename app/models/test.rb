class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :test_users
  has_many :users, through: :test_users
  belongs_to :author, class_name: 'User'

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  scope :category_tests, -> (category) { joins(:category)
      .where(categories: { title: title })
      .order(title: :desc)
      .pluck(:title)}


end
