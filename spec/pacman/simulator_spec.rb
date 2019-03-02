require "spec_helper"

RSpec.describe Pacman::Simulator do
  let(:grid) { Pacman::Grid.new(5, 5) }
  subject { Pacman::Simulator.new(grid) }

  it "place puck in a valid position" do
    expect(Pacman::Puck).to receive(:new)
    .with(0, 0, "NORTH")
    .and_return(double)
    subject.place(0, 0, "NORTH")
    expect(subject.puck).not_to be_nil
  end

  it "cannot place puck in an invalid position" do
    expect(Pacman::Puck).not_to receive(:new)
    subject.place(5, 5, "NORTH")
    expect(subject.puck).to be_nil
  end

  it "does not have puck placed by default" do
    expect(subject.puck_placed?).to eq(false)
  end

  it "does not move puck" do
    expect { subject.move }.to_not raise_error
  end

  it "informs when command is invalid" do
    message = "'PLACE 1, 2, NORTH' is an invalid command\n"
    expect { subject.invalid("PLACE 1, 2, NORTH") }.to output(message).to_stdout
  end

  context "puck has been placed" do
    let(:puck) { instance_double(Pacman::Puck, next_move: [0, 0]) }
    before { allow(subject).to receive(:puck).and_return(puck) }

    it "puck to move" do
      expect(puck).to receive(:move)
      subject.move
    end

    it "puck to turn left" do
      expect(puck).to receive(:turn_left)
      subject.turn_left
    end

    it "puck to turn right" do
      expect(puck).to receive(:turn_right)
      subject.turn_right
    end

    it "puck to report" do
      expect(puck).to receive(:report) {{ east: 3, north: 3, facing: "EAST" }}
      message = "Output: 3,3,EAST\n"
      expect { subject.report }.to output(message).to_stdout
    end

    it "has a placed puck" do
      expect(subject.puck_placed?).to eq(true)
    end
  end

  context "puck at grid boundary" do
    before do
      subject.place(0, 4, "NORTH")
    end

    it "puck cannot move past grid boundary" do
      subject.move
      message = "Output: 0,4,NORTH\n"
      expect { subject.report }.to output(message).to_stdout
    end
  end

end