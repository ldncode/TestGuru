class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_question_answers

  private

  def validate_question_answers
    errors.add(:answers) if answers >= 4
  end
end
