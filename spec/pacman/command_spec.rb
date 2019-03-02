require "spec_helper"

RSpec.describe Pacman::Command do
  
  context "place" do
    it "process place command" do
      command, *args = Pacman::Command.process("PLACE 1,2,NORTH")
      expect(command).to eq(:place)
      expect(args).to eq([1, 2, "NORTH"])
    end

    it "return invalid if invalid place command" do
      command = Pacman::Command.process("PLACE 1, 2, NORTH")
      expect(command).to eq([:invalid, "PLACE 1, 2, NORTH"])
    end
  end

  context "move" do
    it "process move command" do
      command, *args = Pacman::Command.process("MOVE")
      expect(command).to eq(:move)
      expect(args).to be_empty
    end
  end

  context "left" do
    it "process left command" do
      command, *args = Pacman::Command.process("LEFT")
      expect(command).to eq(:turn_left)
      expect(args).to be_empty
    end
  end

  context "right" do
    it "process right command" do
      command, *args = Pacman::Command.process("RIGHT")
      expect(command).to eq(:turn_right)
      expect(args).to be_empty
    end
  end

  context "report" do
    it "process report command" do
      command, *args = Pacman::Command.process("REPORT")
      expect(command).to eq(:report)
      expect(args).to be_empty
    end
  end

end