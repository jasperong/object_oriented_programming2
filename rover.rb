class Rover

  def initialize
    @x = @position[0].to_i
    @y = @position[1].to_i
    @direction = @position[2]
  end

  def turn_left
    case @direction
      when "N" then "W"
      when "W" then "S"
      when "S" then "E"
      when "E" then "N"
    end
  end

  def turn_right
    case @direction
      when "N" then "E"
      when "W" then "N"
      when "S" then "W"
      when "E" then "S"
    end
  end

  def move
    case @direction
    when "N" then y += 1
    when "W" then x += 1
    when "S" then y -= 1
    when "E" then x -= 1
  end

  def read_instruction

  end

end
