class Board
  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def to_s
    "Board: length=#{@length}, width=#{@width}"
  end
end

class Box < Board
  def initialize(length, width, height)
    super(length, width)
    @height = height
  end

  def volume
    area * @height
  end

  def to_s
    "Box: length=#{@length}, width=#{@width}, height=#{@height}"
  end
end