class BadgeService
  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
    @test = test_passage.test
  end

  def call
    if @test_passage.passed?
      Badge.all.each do |badge|
        rule = badge.rule

        if send("#{rule.rule_type}_rule_passed?", rule.rule_value)
          @user.badges << badge
        end
      end
    end
  end

  private

  def category_rule_passed?(rule_value)
    category = Category.find(rule_value)

    category.test_passages.where(user: @user).select(&:passed?).pluck(:test_id).uniq.sort == category.test_ids
  end

  def first_try_rule_passed?(_rule_value)
    @user.test_passages.where(test: @test).count == 1
  end

  def level_rule_passed?(rule_value)
    tests = Test.by_level(rule_value)

    @user.test_passages.where(test: tests).select(&:passed?).pluck(:test_id).uniq.sort == tests.ids
  end
end
