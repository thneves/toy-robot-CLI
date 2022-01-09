require_relative '../lib/modules'

class ToyRobot
  include Messages
  attr_accessor :table, :current_command, :current_robot, :program_on

  def initialize
    @table = 0..4
    @current_command = ''
    @current_robot = nil
    @program_on = true
  end
end

#   TO-DO
#   - primeiro comando tem que ser PLACE
#   - não rodar outros commandos sem o Robo primeiro
#   - refactor PLACE input
#   - refactor metodos for Robot class
#   - criar testes
