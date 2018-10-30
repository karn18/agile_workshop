require './test/test_helper'
require './fizzbuzz'

class TestMeme < Minitest::Test
  def test_when_input_1_should_display_1
    input = 1
    expected = 1
    assert_equal expected, said(input)
  end

  def test_when_input_2_should_display_2
    input = 2
    expected = 2
    assert_equal expected, said(input)
  end

  def test_when_input_3_should_display_fizz
    input = 3
    expected = 'fizz'
    assert_equal expected, said(input)
  end

  def test_when_input_5_should_display_buzz
    input = 5
    expected = 'buzz'
    assert_equal expected, said(input)
  end

  def test_when_input_15_should_display_fizzbuzz
    input = 15
    expected = 'fizzbuzz'
    assert_equal expected, said(input)
  end

  def test_when_input_30_should_display_fizzbuzz
    input = 30
    expected = 'fizzbuzz'
    assert_equal expected, said(input)
  end
end
