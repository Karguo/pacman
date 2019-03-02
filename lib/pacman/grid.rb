module Pacman
  class Grid
    def initialize(width, length)
      @width = width
      @length = length
    end

    def valid_position?(east, north)
      east >= 0 && 
      east < @width && 
      north >= 0 && 
      north < @length
    end
  end
end