class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validates :body, presence: true
  validate :validate_question_answers

  private

  def validate_question_answers
    errors.add(:answers) if question.answers >= 4
  end
end
