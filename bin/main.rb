require_relative '../lib/robot'
require_relative '../lib/play'

program_on = true

while program_on

  toy_robot = ToyRobot.new
  toy_robot.intro

  while toy_robot.current_command != 'exit'
    puts "Digit a command: \n"
    toy_robot.current_command = gets.chomp.downcase
    case toy_robot.current_command
    when 'place'
      robot = Robot.new
      robot.place(toy_robot.table)
    when 'move'
      robot.move(robot.f_orientation)
    when 'rotate'
      robot.rotate
    when 'report'
      robot.report
    when 'exit'
      puts "Thanks for playing around :)"
      program_on = false
    else
      puts "Digit a valid command: Place, Move, Rotate, Report or Exit"
    end
  end
  # robot = Robot.new
  # robot.place
  # puts robot.x_position.to_s
  # puts robot.y_position.to_s
  # robot.move(robot.f_orientation)
  # puts robot.x_position.to_s
  # puts robot.y_position.to_s
  # robot.rotate
  # robot.move(robot.f_orientation)
  # puts robot.x_position.to_s
  # puts robot.y_position.to_s
  # puts robot.report
  # program_on = false
end

