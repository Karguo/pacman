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

    def move
      return unless puck_placed?
      return unless @grid.valid_position?(*puck.next_move)
      puck.move
    end

    def turn_left
      puck.turn_left
    end

    def turn_right
      puck.turn_right
    end

    def report
      position = puck.report
      puts "Output: #{position[:east]},#{position[:north]},#{position[:facing]}"
    end

    def puck_placed?
      !puck.nil?
    end

    def invalid(command)
      puts "'#{command.strip}' is an invalid command"
    end

  end
end