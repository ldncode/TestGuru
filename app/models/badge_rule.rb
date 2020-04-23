class BadgeRule < ApplicationRecord
  RULE_TYPES = %w[category first_try level]

  belongs_to :badge

  validates :rule_type, presence: true
  validates :rule_value, presence: true
end
