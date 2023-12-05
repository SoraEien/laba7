require_relative 'class'

class ClassUser
  def initialize
    puts "Enter the length and width of the board:"
    length = gets.chomp.to_i
    width = gets.chomp.to_i
    @board = Board.new(length, width)

    puts "Enter the length, width, and height of the box:"
    length = gets.chomp.to_i
    width = gets.chomp.to_i
    height = gets.chomp.to_i
    @box = Box.new(length, width, height)
  end

  def display_board_area
    puts "Area of the board: #{@board.area}"
  end

  def display_box_volume
    puts "Volume of the box: #{@box.volume}"
  end
end

interaction = ClassUser.new
interaction.display_board_area
interaction.display_box_volume