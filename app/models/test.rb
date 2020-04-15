class Test < ApplicationRecord
  belongs_to :category
  has_many :questions, dependent: :destroy
  has_many :test_passages, dependent: :destroy
  has_many :users, through: :test_passages, dependent: :destroy
  belongs_to :author, class_name: 'User'

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: {only_integer: true}

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  scope :category_tests, -> (title) { joins(:category)
                                     .where(categories: { title: title }) }


  def self.category_title(title)
    category_tests(title).order(title: :desc).pluck(:title)
  end


  def self.levels
    all.pluck(:level).uniq.sort
  end

end
