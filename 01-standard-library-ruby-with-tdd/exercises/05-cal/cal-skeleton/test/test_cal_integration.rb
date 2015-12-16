require 'test/unit'

class CalIntegrationTest < Test::Unit::TestCase
  def test_2_2012_trailing_spaces
    assert_equal `cal 02 2012`, `ruby cal.rb 02 2012`
  end
  def test_2_2000_leap_year
    assert_equal `cal 02 2000`, `ruby cal.rb 02 2000`
  end
  def test_9_2012_starts_on_saturday
    assert_equal `cal 09 2012`, `ruby cal.rb 09 2012`
  end
  def test_9_1888_starts_on_saturday
    assert_equal `cal 09 1888`, `ruby cal.rb 09 1888`
  end
  def test_9_1981_saturday_spacing
    assert_equal `cal 05 1981`, `ruby cal.rb 05 1981`
  end
end
