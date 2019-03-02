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

  context "when facing north" do
    subject { Pacman::Puck.new(0, 0, "NORTH") }

    it "moves north" do
      subject.move
      expect(subject.north).to eq(1)
    end
  end

  context "when facing south" do
    subject { Pacman::Puck.new(0, 0, "SOUTH") }

    it "moves south" do
      subject.move
      expect(subject.north).to eq(-1)
    end
  end

  context "when facing east" do
    subject { Pacman::Puck.new(0, 0, "EAST") }

    it "moves east" do
      subject.move
      expect(subject.east).to eq(1)
    end
  end

  context "when facing west" do
    subject { Pacman::Puck.new(0, 0, "WEST") }

    it "moves west" do
      subject.move
      expect(subject.east).to eq(-1)
    end
  end

end
