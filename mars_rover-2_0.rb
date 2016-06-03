class Rover
  attr_accessor :x, :y, :direction, :steps, :turn

  def initialize
    @x = x
    @y = y
    @direction = direction
    @n = "N"
    @w = "W"
    @s = "S"
    @e = "E"
  end

  def read_instruction
    puts "Enter 1st rover initial position and direction"
    @position = gets.chomp.gsub(" ", "").split("")
      @x = @position[0].to_i
      @y = @position[1].to_i
      @direction = @position[2]
    puts "Enter move instructions"
    @instructions = gets.chomp.gsub(" ", "").split("")
  end

  def turn
    case "L"
      when @n then @direction = @w
      when @w then @direction = @s
      when @s then @direction = @e
      when @e then @direction = @n
    end
    case "R"
      when @n then @direction = @e
      when @e then @direction = @s
      when @s then @direction = @w
      when @w then @direction = @n
    end
    @direction
  end

  def move
    case "M"
      when @direction == @n then @y += 1
      when @direction == @e then @x += 1
      when @direction == @s then @y -= 1
      when @direction == @w then @x -= 1
    end
  end

  def walk
    @instructions.each do |command|
      if command == "M"
        move
      elsif command == "L" || command == "R"
        turn
      end
    end
    @position[0]= @x
    @position[1]= @y
    @position[2]= @direction
  end
end
