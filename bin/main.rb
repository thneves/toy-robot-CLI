require_relative "../lib/robot.rb"

program_on = true

while program_on
  puts "-----------------------------------------"
  puts "                 TOY ROBOT               "
  puts "-----------------------------------------"
  puts "INSTRUCTIONS:"
  puts "these are the instructions to the toy robot"
  puts "INITIAL COMMANDS:"
  puts "PLACE"

  # instruções
  # place -> posição x, posição y
  # facing -> north, south, west, east
  # rotate -> left and right
  # report -> show current location and where the robot is facing
  robot = Robot.new
  robot.place
  puts "#{robot.x_position}"
  program_on = false
end

=begin
0..4
0..4

=end
