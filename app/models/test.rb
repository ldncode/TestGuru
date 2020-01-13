class Test < ApplicationRecord
  belongs_to :category

  def self.category_tests(title)
    Category.joins('JOIN categories ON tests.category_id = categories.id')
        .where(categories: { title: title })
        .order(title: :desc)
        .pluck(:title)
  end
end
