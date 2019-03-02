require "spec_helper"


RSpec.describe Pacman::Puck do
  subject { Pacman::Puck.new(0) }

  it "moves 2 spaces east" do
    2.times { subject.move_east }
    expect(subject.position).to eq(2)
  end

  it "moves 3 spaces east" do
    3.times { subject.move_east }
    expect(subject.position).to eq(3)
  end

  it "moves 2 spaces west" do
    2.times { subject.move_west }
    expect(subject.position).to eq(-2)
  end

  it "moves 3 spaces west" do
    3.times { subject.move_west }
    expect(subject.position).to eq(-3)
  end

end
