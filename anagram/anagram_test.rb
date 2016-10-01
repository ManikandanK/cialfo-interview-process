require 'test/unit'
require './anagram'

class AnagramTest < Test::Unit::TestCase

  def test_other_then_string
    assert_equal(false, "momdad".anagrams?(nil))
    assert_equal(false, "momdad".anagrams?([]))
  end

  def test_empty_string
    assert_equal(false, "  ".anagrams?("  "))
  end

  def test_invalid_length
    assert_equal(false, "momdad".anagrams?("dadmomm"))
  end

  def test_anagrams
    assert_equal(true, "momdad".anagrams?("dadmom"))
    assert_equal(true, "orchestra".anagrams?("carthorse"))
  end

end