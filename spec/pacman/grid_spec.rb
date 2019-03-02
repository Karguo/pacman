require "spec_helper"

RSpec.describe Pacman::Grid do
  subject { Pacman::Grid.new(5, 5) }

  context "valid position?" do
    it { should be_valid_position(0, 0) }
    it { should be_valid_position(4, 4) }
    it { should_not be_valid_position(5, 5) }
    it { should_not be_valid_position(-1, -1) }
  end

end