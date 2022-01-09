require_relative '../lib/modules.rb'

class ToyRobot
  include Messages
  attr_accessor :table, :current_command

  def initialize
    @table = 0..4
    @current_command = ''
  end
end