require "minitest/autorun"
require "rbloom"

class RbloomTest < Minitest::Test

  def setup
    @bloom = Rbloom.new
  end

  def test_contains_without_word
    refute @bloom.contains? "thing"
  end

  def test_contains_without_word
    @bloom.add "word"
    refute @bloom.contains? "word1"
  end

  def test_add_word
    @bloom.add "thing"
  end

  def test_contains_with_word
    @bloom.add "word"
    assert @bloom.contains? "word"
  end

  def test_contains_more_things
    @bloom.add "a"
    @bloom.add "b"
    @bloom.add "c"
    @bloom.add "aa"
    @bloom.add "bb"
    @bloom.add "cc"
    @bloom.add "aaa"
    @bloom.add "bbb"
    @bloom.add "ccc"
    @bloom.add "aaaa"
    assert @bloom.contains? "b"
  end
end
