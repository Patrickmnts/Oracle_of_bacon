require './oracle_of_bacon.rb'
require './api.rb'
require 'minitest/autorun'

class BaconTest < MiniTest::Unit::TestCase

	def setup
		@unparsed = '<link><actor>Kevin Bacon</actor><movie>JFK (1991)</movie><actor>Neil</actor></link>'
		@parsed = "Kevin Bacon was in JFK (1991) with Neil"
		@spellcheck_case = '<spellcheck name="Kevin Cost"><match>Kevin Costa</match><match>Kevin Post</match></spellcheck>'
		@spellcheck_truthy = ["Kevin Costa", "Kevin Post"]
	end

  def test_identity
    Oracle.degrees
  end

  def test_that_APIescape_escapes_whitespace_from_string
    assert_equal 'Kevin+Bacon', API.escape('Kevin Bacon')
  end

  def test_that_API_fetch_returns_something
    refute_equal 0, API.fetch('Kevin+Bacon','George+Clooney', 1).length
  end

  def test_that_API_parse_works
  	assert_equal @parsed, API.parse(@unparsed)
  end

  def test_that_API_spellcheck_returns_false_if_spellcheck_is_not_present
  	assert_equal false, API.spellcheck?(@unparsed)
  end

  def test_that_API_spellcheck_returns_true_if_spellcheck_is_present
  	assert_equal @spellcheck_truthy, API.spellcheck?(@spellcheck_case)
  end

end