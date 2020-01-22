class User < ApplicationRecord
  has_many :test_users
  has_many :tests, through: :test_users

  def passed_tests_level(level)
    Test.joins('JOIN user_tests ON tests.id = user_tests.test_id')
        .where('level = ? AND user_tests.user_id = ?', level, self.id)
  end
end
