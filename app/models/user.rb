class User < ApplicationRecord
  has_many :test_users
  has_many :tests, through: :test_users

  def passed_tests_level(level)
    tests.where('level = ?, level')
  end
end
