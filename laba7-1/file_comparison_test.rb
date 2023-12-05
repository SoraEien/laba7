require 'minitest/autorun'
require_relative 'file_comparison'

class TestFileComparison < Minitest::Test
  def setup
    File.write('file1.txt', 'abcde')
    File.write('file2.txt', 'abcde')
    File.write('file3.txt', 'abcdexyz')
    File.write('file4.txt', 'abcdexxx')
  end

  def test_identical_files
    assert_equal(-1, FileComparison.compare('file1.txt', 'file1.txt'))
  end

  def test_same_files
    assert_equal(-1, FileComparison.compare('file1.txt', 'file2.txt'))
  end

  def test_deffering_beginning
    assert_equal(7, FileComparison.compare('file3.txt', 'file4.txt'))
  end

  def teardown
    File.delete('file1.txt')
    File.delete('file2.txt')
    File.delete('file3.txt')
    File.delete('file4.txt')
  end
end