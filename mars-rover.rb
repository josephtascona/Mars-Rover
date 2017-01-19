class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction
  def initialize(x = 0, y = 0, direction = "center")
    @x_coordinate = x
    @y_coordinate = y
    @direction = direction
  end
  def move
    puts "You are controlling the Mars Rover right at this moment we need you to control it. To move it forward press \"n\", to move backwards \"s\", to the right press \"e\", and to the left press \"w\"."
    instruction = gets.strip.downcase
    if instruction == "n"
      @x_coordinate += 1
    elsif instruction == "s"
      @x_coordinate -= 1
    elsif instruction == "e"
      @y_coordinate += 1
    elsif instruction == "w"
      @y_coordinate -= 1
    else
      puts "Sorry you didn't click a valid key"
    end
  end
  def turn
    puts "Now do you want to look the left or right? To look to the left write \"left\" to look to the right write \"right\""
    instruction2 = gets.strip.downcase
    if instruction2 == "left"
      @direction = "left"
    elsif instruction2 == "right"
      @direction = "right"
    end
  end
end

rover = Rover.new

10.times do
  rover.move
  rover.turn
  puts rover.x_coordinate
  puts rover.y_coordinate
  puts rover.direction
end
