
module Pacman
  class Puck
    attr_reader :east, :north, :facing

    def initialize(east = 0, north = 0, facing = "NORTH")
      @east = east
      @north = north
      @facing = facing
    end

    def move_east
      @east += 1
    end

    def move_west
      @east -= 1
    end

    def move_north
      @north += 1
    end

    def move_south
      @north -= 1
    end

    def move
      case @facing
      when "NORTH" then move_north
      when "SOUTH" then move_south
      when "EAST" then move_east
      when "WEST" then move_west
      end
    end

    def next_move
      case @facing
      when "NORTH"
        [@east, @north + 1]
      when "SOUTH"
        [@east, @north - 1]
      when "EAST"
        [@east + 1, @north]
      when "WEST"
        [@east - 1, @north]
      end
    end

    def turn_left
      @facing = case @facing
      when "NORTH" then "WEST"
      when "SOUTH" then "EAST"
      when "WEST" then "SOUTH"
      when "EAST" then "NORTH"
      end
    end

    def turn_right
      @facing = case @facing
      when "NORTH" then "EAST"
      when "SOUTH" then "WEST"
      when "WEST" then "NORTH"
      when "EAST" then "SOUTH"
      end
    end

    def report
      {
        east: east,
        north: north,
        facing: facing
      }
    end

  end
end