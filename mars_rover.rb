class Rover
  attr_accessor :x, :y, :direction, :steps, :turn

  def initialize
  end

  def read_instruction
    puts "Enter grid size"
    @size = gets.chomp.gsub(" ", "").split("")
    puts "Enter 1st rover initial position and direction"
    @initial_1 = gets.chomp.gsub(" ", "").split("")
    puts "Enter move instructions"
    @instructions_1 = gets.chomp.gsub(" ", "").split("")
    puts "Enter 2nd rover initial position and direction"
    @initial_2 = gets.chomp.gsub(" ", "").split("")
    puts "Enter 2nd rover move instructions"
    @instructions_2 = gets.chomp.gsub(" ", "").split("")
  end

  def turn(turn)
    instructions_1.each do |command|
      case command == "L"
        when "N" then "W"
        when "W" then "S"
        when "S" then "E"
        when "E" then "N"
      end
      case command == "R"
        when "N" then "E"
        when "E" then "S"
        when "S" then "W"
        when "W" then "N"
      end

    instructions_2.each do |command|
      case command == "L"
        when "N" then "W"
        when "W" then "S"
        when "S" then "E"
        when "E" then "N"
      end
      case command == "R"
        when "N" then "E"
        when "E" then "S"
        when "S" then "W"
        when "W" then "N"
      end
  end

  def move
    case @direction
    when n then y += 1
    when e then x += 1
    when s then y -= 1
    when w then x -= 1
    end
  end


end

rover1 = Rover.new
rover1.read_instruction
