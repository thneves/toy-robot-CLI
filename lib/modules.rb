module Messages
  def intro
    puts '-----------------------------------------'
    puts '                 TOY ROBOT               '
    puts '-----------------------------------------'
    puts 'COMMANDS:'
    puts 'PLACE -> Set the location and facing direction of your Robot: X, Y, F.'
    puts 'MOVE -> Move your Robot one position at facing direction: North, South, East, West.'
    puts 'ROTATE -> Change the facing direction of your Robot in 90º: Left or Right'
    puts 'REPORT -> Check the current X, Y and F of your Robot.'
    puts 'EXIT -> Quit the program :)'
    puts "It's all case insensitive!"
  end

  def initial_command
    first_place = gets.chomp.downcase
    first_place
  end
end