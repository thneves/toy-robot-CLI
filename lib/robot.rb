class Robot
  attr_accessor :current_robot
  attr_reader :position, :orientation,

  def initialize(position, orientation, x, y, f)
    @position = nil
    @orientation = nil
  end

  def place
    range = (0..4)
    puts "Place a X position between 0 and 4"
    @x = gets.chomp.to_i
    until range.include?(@x)
      puts  "Must set a X valid place on table!"
      puts range
      puts @x.class
      @x = gets.chomp.to_i
    end
    
    puts "Place a Y position between 0 and 4"
    @y = gets.chomp.to_i
    until range.include?(@y)
      puts "Must set a Y valid place on table!"
      @y = gets.chomp.to_i
    end
  end
end
