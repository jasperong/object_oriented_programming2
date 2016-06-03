require_relative "rover"

class MissionControl
  attr_accessor :position, :x, :y, :direction

  def input
    puts "Input starting coordinates and direction >>"
    @position = gets.chomp.gsub(" ", "").split("")
      @x = @position[0].to_i
      @y = @position[1].to_i
      @direction = @position[2]
      @rover = Rover.new(@x, @y, @direction)
    puts "Enter move instructions >>"
    user_commands = gets.chomp.gsub(" ", "").split("")
      @rover.read_instruction(user_commands)
  end
end
