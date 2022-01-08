class ToyRobot
  attr_accessor :table, :game_on, :place, :current_toy, :validator

  def initialize
    @game_on = true
    @place = false
  end
end