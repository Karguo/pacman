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

    it "turns left to face west" do
      subject.turn_left
      expect(subject.facing).to eq("WEST")
    end

    it "turns right to face east" do
      subject.turn_right
      expect(subject.facing).to eq("EAST")
    end

    it "next move is to (0, 1)" do
      expect(subject.next_move).to eq([0, 1])
    end
  end

  context "when facing south" do
    subject { Pacman::Puck.new(0, 0, "SOUTH") }

    it "moves south" do
      subject.move
      expect(subject.north).to eq(-1)
    end

    it "turns left to face east" do
      subject.turn_left
      expect(subject.facing).to eq("EAST")
    end

    it "turns right to face west" do
      subject.turn_right
      expect(subject.facing).to eq("WEST")
    end

    it "next move is to (0, -1)" do
      expect(subject.next_move).to eq([0, -1])
    end
  end

  context "when facing east" do
    subject { Pacman::Puck.new(0, 0, "EAST") }

    it "moves east" do
      subject.move
      expect(subject.east).to eq(1)
    end

    it "turns left to face north" do
      subject.turn_left
      expect(subject.facing).to eq("NORTH")
    end

    it "turns right to face south" do
      subject.turn_right
      expect(subject.facing).to eq("SOUTH")
    end

    it "next move is to (1, 0)" do
      expect(subject.next_move).to eq([1, 0])
    end
  end

  context "when facing west" do
    subject { Pacman::Puck.new(0, 0, "WEST") }

    it "moves west" do
      subject.move
      expect(subject.east).to eq(-1)
    end

    it "turns left to face south" do
      subject.turn_left
      expect(subject.facing).to eq("SOUTH")
    end

    it "turns right to face north" do
      subject.turn_right
      expect(subject.facing).to eq("NORTH")
    end

    it "next move is to (-1, 0)" do
      expect(subject.next_move).to eq([-1, 0])
    end
  end

  context "report" do
    subject { Pacman::Puck.new(3, 4, "EAST") }

    it "show puck's current location and which way it is facing" do
      expect(subject.report).to eq({
        east: 3,
        north: 4,
        facing: "EAST"
      })
    end
  end

end
