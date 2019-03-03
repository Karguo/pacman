module Pacman
  class Grid
    def initialize(width, length)
      @width = width
      @length = length
    end

    def valid_position?(x_position, y_position)
      x_position >= 0 && 
      x_position < @width && 
      y_position >= 0 && 
      y_position < @length
    end
  end
end