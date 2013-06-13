require './oracle_of_bacon.rb'
require './api.rb'
require 'minitest/autorun'

class BaconTest < MiniTest::Unit::TestCase

  def test_identity
    Oracle.degrees
  end

  def test_that_APIescape_escapes_whitespace_from_string
    assert_equal 'Kevin+Bacon', API.escape('Kevin Bacon')
  end

  def test_that_API_fetch_returns_something
    refute_equal 0, API.fetch('Kevin+Bacon','George+Clooney', 1).length
  end
end