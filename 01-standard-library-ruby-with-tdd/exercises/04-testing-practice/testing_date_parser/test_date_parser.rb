require_relative 'date_parser'
require 'minitest/autorun'

class TestDateParser < MiniTest::Unit::TestCase
  def test_date_parser_has_a_parse_method
    DateParser.parse("2004/12/24")
  end
end
