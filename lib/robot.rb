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

  def place(range)
    orientation = %w[north south west east]

    puts 'Place a X position between 0 and 4'
    @x_position = gets.chomp.to_i
    until range.include?(@x_position)
      puts 'Must set a X valid place on table!'
      @x_position = gets.chomp.to_i
    end

    puts 'Place a Y position between 0 and 4'
    @y_position = gets.chomp.to_i
    until range.include?(@y_position)
      puts 'Must set a Y valid place on table!'
      @y_position = gets.chomp.to_i
    end

    puts 'choose where the robot will be facing: north, south, west or east'
    @f_orientation = gets.chomp
    until orientation.include?(@f_orientation)
      puts 'must choose a valid facing position'
      @f_orientation = gets.chomp
    end
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

  def rotate
    choices = %w[right left]
    puts 'Choose a side to rotate your Robot!'
    side = gets.chomp.downcase
    until choices.include?(side)
      puts 'Choose Left or Right'
      side = gets.chomp.downcase
    end
    if @f_orientation == 'north' && side == 'left'
      @f_orientation = 'west'
    elsif @f_orientation == 'north' && side == 'right'
      @f_orientation = 'east'
    elsif @f_orientation == 'east' && side == 'left'
      @f_orientation = 'north'
    elsif @f_orientation == 'east' && side == 'right'
      @f_orientation = 'south'
    elsif @f_orientation == 'south' && side == 'left'
      @f_orientation = 'west'
    elsif @f_orientation == 'south' && side == 'right'
      @f_orientation = 'east'
    elsif @f_orientation == 'west' && side == 'left'
      @f_orientation = 'north'
    elsif @f_orientation == 'west' && side == 'right'
      @f_orientation = 'south'
    end
    puts @f_orientation
  end

  def report
    puts "Robot is current at location => X:#{@x_position}, Y:#{@y_position}, F: #{@f_orientation}"
  end
end
