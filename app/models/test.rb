class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :test_users
  has_many :users, through: :test_users
  belongs_to :author, class_name: 'User'

  validates :title, presence: true, uniqueness: true
  validates :level, numericality: {only_integer: true}

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  scope :category_tests, -> (title) { joins(:category)
                                     .where(categories: { title: title }) }


  def self.category_title(title)
    category_tests(title).order(title: :desc).pluck(:title)
  end

end
