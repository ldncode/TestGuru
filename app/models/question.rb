class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validates :body, presence: true

end
