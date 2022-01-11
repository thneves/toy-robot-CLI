require_relative '../lib/modules'

class ToyRobot
  include Messages
  attr_accessor :table, :current_command, :program_on

  def initialize
    @table = 0..4
    @current_command = ''
    @program_on = true
  end
end
