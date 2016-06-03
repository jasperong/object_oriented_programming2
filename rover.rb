class Rover

  def initialize
    @x = @position[0].to_i
    @y = @position[1].to_i
    @direction = @position[2]
  end

  def turn_left
    case @direction
      when "N" then @direction = "W"
      when "W" then @direction = "S"
      when "S" then @direction = "E"
      when "E" then @direction = "N"
    end
  end

  def turn_right
    case @direction
      when "N" then @direction = "E"
      when "W" then @direction = "N"
      when "S" then @direction = "W"
      when "E" then @direction = "S"
    end
  end

  def move
    case @direction
      when "N" then y += 1
      when "W" then x += 1
      when "S" then y -= 1
      when "E" then x -= 1
    end
  end

  def read_instruction
    @instructions.each do |command|
      case command
        when "L" then turn_left
        when "R" then turn_right
        when "M" then move
      end
    end
  end
end
