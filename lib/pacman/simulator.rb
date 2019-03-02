module Pacman
  class Simulator
    attr_reader :puck
    
    def initialize(grid)
      @grid = grid
    end

    def place(east, north, facing)
      return unless @grid.valid_position?(east, north)

      @puck = Puck.new(east, north, facing)
    end

  end
end