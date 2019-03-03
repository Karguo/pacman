
module Pacman
  class Puck
    attr_reader :x_position, :y_position, :facing

    def initialize(x_position = 0, y_position = 0, facing = "NORTH")
      @x_position = x_position
      @y_position = y_position
      @facing = facing
    end

    def move_east
      @x_position += 1
    end

    def move_west
      @x_position -= 1
    end

    def move_north
      @y_position += 1
    end

    def move_south
      @y_position -= 1
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
        [@x_position, @y_position + 1]
      when "SOUTH"
        [@x_position, @y_position - 1]
      when "EAST"
        [@x_position + 1, @y_position]
      when "WEST"
        [@x_position - 1, @y_position]
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
        x_position: x_position,
        y_position: y_position,
        facing: facing
      }
    end

  end
end