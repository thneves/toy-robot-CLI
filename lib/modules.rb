module Messages
  def intro
    puts '-----------------------------------------'
    puts '                 TOY ROBOT               '
    puts '-----------------------------------------'
    puts 'INSTRUCTIONS:'
    puts 'Move your Robot around the table.'
    puts "The size of the table is 5x5. \n"
    puts 'The table coordinates goes from 0 to 4 in X and Y locations'
    puts 'Robot can move to F direction which can be North, South, East or West'
    puts 'COMMANDS:'
    puts 'PLACE -> Set the initial location and facing direction of your Robot: X, Y, F.'
    puts 'MOVE -> Move your Robot one position at facing direction.'
    puts 'LEFT -> Change the facing direction of your Robot 90º to the Left'
    puts 'RIGHT -> Change the facing direction of your Robot 90º to the Right'
    puts "REPORT -> Check Robot's current location"
    puts 'EXIT -> Quit the program :)'
    puts "It's all case insensitive!"
  end

  def goodbye
    puts '-----------------------------------------'
    puts '         THANKS FOR PLAYING :)            '
    puts '-----------------------------------------'
  end
end
