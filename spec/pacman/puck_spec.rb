require "spec_helper"


RSpec.describe Pacman::Puck do
  subject { Pacman::Puck.new(0) }

  it "moves 2 spaces east" do
    2.times { subject.move_east }
    expect(subject.east).to eq(2)
  end

  it "moves 3 spaces east" do
    3.times { subject.move_east }
    expect(subject.east).to eq(3)
  end

  it "moves 2 spaces west" do
    2.times { subject.move_west }
    expect(subject.east).to eq(-2)
  end

  it "moves 3 spaces west" do
    3.times { subject.move_west }
    expect(subject.east).to eq(-3)
  end

  it "moves 2 spaces north" do
    2.times { subject.move_north }
    expect(subject.north).to eq(2)
  end

  it "moves 3 spaces north" do
    3.times { subject.move_north }
    expect(subject.north).to eq(3)
  end

  it "moves 2 spaces south" do
    2.times { subject.move_south }
    expect(subject.north).to eq(-2)
  end

  it "moves 3 spaces south" do
    3.times { subject.move_south }
    expect(subject.north).to eq(-3)
  end

end
