require 'minitest/autorun'
require_relative 'class'

class TestObjects < Minitest::Test
  def setup
    @board = Board.new(5, 10)
    @box = Box.new(3, 4, 5)
  end

  def test_board_area
    assert_equal 50, @board.area
  end

  def test_box_volume
    assert_equal 60, @box.volume
  end

  def test_object_hierarchy
    assert_instance_of Board, @board
    assert_instance_of Box, @box
  end
end