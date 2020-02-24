module TestsHelper
  TEST_LEVELS = { 1 => :easy, 2 => :elementary, 3 => :advanced, 4 => :hard }
  def test_level(test)
    TEST_LEVELS[test.level] || :hero
  end
end
