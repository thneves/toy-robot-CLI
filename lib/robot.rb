class Robot
  attr_accessor :current_robot
  attr_reader :position, :orientation, :x_position, :y_position, :f_orientation

  def initialize
    @position = nil
    @orientation = nil
    @x_position = nil
    @y_position = nil
    @f_orientation = nil
  end

  def place_x(range)
    @x_position = gets.chomp.to_i
    until range.include?(@x_position)
      puts 'Must set a X valid place on table!'
      @x_position = gets.chomp.to_i
    end
    @x_position
  end

  def place_y(range)
    @y_position = gets.chomp.to_i
    until range.include?(@y_position)
      puts 'Must set a Y valid place on table!'
      @y_position = gets.chomp.to_i
    end
    @y_position
  end

  def place_f
    orientation = %w[north south west east]
    @f_orientation = gets.chomp
    until orientation.include?(@f_orientation)
      puts 'Must choose a valid facing position'
      @f_orientation = gets.chomp
    end
    @f_orientation
  end

  def place(range)
    puts 'Place X,Y,F'
    puts "Robot placed at X: #{place_x(range)}, Y: #{place_y(range)}, F: #{place_f}"
  end

  def move_message
    puts 'Cannot move outside the table!'
  end

  def move(orientation)
    case orientation
    when 'north'
      (@y_position - 1).negative? ? move_message : @y_position -= 1
    when 'south'
      @y_position + 1 > 4 ? move_message : @y_position += 1
    when 'east'
      @x_position + 1 > 4 ? move_message : @x_position += 1
    when 'west'
      (@x_position - 1).negative? ? move_message : @x_position -= 1
    end
  end

  def left
    return @f_orientation = 'west' if @f_orientation == 'north' || @f_orientation == 'south'
    return @f_orientation = 'north' if @f_orientation == 'west' || @f_orientation == 'east'
  end

  def right
    return @f_orientation = 'east' if @f_orientation == 'north' || @f_orientation == 'south'
    return @f_orientation = 'south' if @f_orientation == 'west' || @f_orientation == 'east'
  end

  def report
    puts '--------------------------------------------------'.red
    puts "  ROBOT CURRENT LOCATION IS:  X: #{@x_position}, Y: #{@y_position}, F: #{@f_orientation.capitalize}"
    puts '--------------------------------------------------'
  end
end
