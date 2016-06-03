class Rover

  def initialize
    @x = @position[0].to_i
    @y = @position[1].to_i
    @direction = @position[2]
  end

  def turn
    case #something == "L"
      when @direction == "N" then "W"
      when @direction == "W" then "S"
      when @direction == "S" then "E"
      when @direction == "E" then "N"
    end

    case #something == "R"
    when @direction == "N" then "E"
    when @direction == "W" then "N"
    when @direction == "S" then "W"
    when @direction == "E" then "S"


  end

  def move

  end

  def read_instruction

  end

end
