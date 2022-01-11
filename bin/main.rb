require_relative '../lib/robot'
require_relative '../lib/play'

toy_robot = ToyRobot.new
toy_robot.intro
puts "Place your robot: \n"
first_command = gets.chomp.downcase
until first_command == 'place'
  puts 'Must place a Robot first'
  first_command = gets.chomp.downcase
end

robot = Robot.new
robot.place(toy_robot.table)

while toy_robot.program_on
  puts "Digit a command: \n"
  toy_robot.current_command = gets.chomp.downcase
  case toy_robot.current_command
  when 'place'
    robot = Robot.new
    robot.place(toy_robot.table)
  when 'move'
    robot.move(robot.f_orientation)
  when 'left'
    robot.left
  when 'right'
    robot.right
  when 'report'
    robot.report
  when 'exit'
    toy_robot.goodbye
    toy_robot.program_on = false
  else
    puts 'Digit a valid command: Place, Move, Rotate, Report or Exit'
  end
end
