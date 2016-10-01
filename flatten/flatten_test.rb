require 'test/unit'
require './flatten'

class FlattenTest < Test::Unit::TestCase

  def setup
    @array = [1, 1, [1,2, [3,4, [5,6,[7]]]]]
  end

  def test_empty
    assert_equal([], [].my_flatten)
  end

  def test_nil_element
    array = [nil, true, false]
    assert_equal(array, array.my_flatten)
  end

  def test_other_element
    array = [1,2, 'String', {:ha => :sh}]
    assert_equal(array, array.my_flatten)
  end

  def test_flatten_nil
    assert_equal(@array.flatten, @array.my_flatten)
  end

  def test_flatten_1
    assert_equal(@array.flatten(1), @array.my_flatten(1))
  end

  def test_flatten_2
    assert_equal(@array.flatten(2), @array.my_flatten(2))
  end

  def test_flatten_3
    assert_equal(@array.flatten(3), @array.my_flatten(3))
  end

end