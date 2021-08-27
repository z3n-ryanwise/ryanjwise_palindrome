# frozen_string_literal: true

require 'test_helper'

class RyanjwisePalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RyanjwisePalindrome::VERSION
  end

  def test_non_palindrome
    refute 'apple'.palindrome?
  end

  def test_literal_palindrome
    assert 'racecar'.palindrome?
  end

  def test_mixed_case_palindrome
    assert 'RaceCar'.palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters_removes_only_punctuation_native
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end

  def test_letters_removes_only_punctuation_native_flipped
    assert_equal "Madam, I'm Adam.".letters, "MadamImAdam"
  end
  
  def test_letters_removes_only_punctuation_equals
    assert "MadamImAdam" ==  "Madam, I'm Adam.".letters
  end
end
