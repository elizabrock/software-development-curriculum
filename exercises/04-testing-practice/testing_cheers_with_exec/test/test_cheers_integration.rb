require_relative 'helper'

class TestCheersIntegration < MiniTest::Unit::TestCase

  def test_a_name_with_no_vowels
    shell_output = `ruby cheers.rb brt`
    expected_output = <<EOS
Give me a.. B
Give me a.. R
Give me a.. T
EOS
    assert_equal expected_output, shell_output
  end

end
