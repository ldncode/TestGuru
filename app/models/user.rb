class User < ApplicationRecord
  def passed_tests_level(level)
    Test.joins('JOIN user_tests ON tests.id = user_tests.test_id')
        .where('level = ? AND user_tests.user_id = ?', level, self.id)
  end
end
