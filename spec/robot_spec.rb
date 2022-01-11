require 'stringio'
require_relative '../lib/robot'

describe Robot do

  let(:test_robot) { Robot.new }
  let(:x_location_input) { StringIO.new("2") }
  let(:y_location_input) { StringIO.new("4") }
  let(:f_direction_input) { StringIO.new("WEST") }

  describe '#initialize' do
    it 'creates a new instance of a Robot' do
      expect(test_robot).to be_a(Object)
    end
  end

  describe '#place_x' do
    it 'places the robot X location' do
      $stdin = x_location_input
      expect(test_robot.place_x(0..4)).to eql(2)
    end
  end

  describe '#place_y' do
    it 'places the robot Y location' do
      $stdin = y_location_input
      expect(test_robot.place_y(0..4)).to eql(4)  
    end
  end

  describe '#place_y' do
    it 'places robot F direction' do
      $stdin = f_direction_input
      expect(test_robot.place_f).to eql("west")
    end
  end

  describe "#move" do
    subject { Robot.new }

    it 'moves the robot one position to north' do
      subject.x_position = 2
      subject.y_position = 2
      subject.f_orientation = 'north'
      expect(subject.move('north')).to eql(1)
    end

    it 'moves the robot one position to east' do
      subject.x_position = 2
      subject.y_position = 2
      subject.f_orientation = 'east'
      expect(subject.move('east')).to eql(3)
    end

    it "doesn't allow robot go outside table" do
      subject.x_position = 0
      subject.y_position = 0
      subject.f_orientation = 'west'
      expect{ subject.move('west').to output("Cannot move outside the table!").to_stdout }
    end
  end

  describe "#left" do
    subject { Robot.new }
    it "changes robot position from north to west" do
      subject.x_position = 0
      subject.y_position = 0
      subject.f_orientation = 'north'
      expect(subject.left).to eq('west')
    end
  end

  describe "#right" do
    subject { Robot.new }
    it "changes robot position from north to east" do
      subject.x_position = 0
      subject.y_position = 0
      subject.f_orientation = 'north'
      expect(subject.left).to eq('west')
    end
  end
end
