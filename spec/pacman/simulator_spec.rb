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

end