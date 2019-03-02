# 5x5 grid
# valid inputs are == "PLACE X, Y, F" || "MOVE" || "LEFT" || "RIGHT" || "REPORT"
# valid input for X(east) & Y(north) == 0..5 - 1 or 0..4
# valid input for F == "NORTH" || "SOUTH" || "EAST" || "WEST"
# PLACE == needs X, Y and F inputs (is position valid?)
# MOVE == 1 space in the direction that puck is Facing (is position still valid?)
# LEFT == turn 90 degrees to the left
# RIGHT == turn 90 degrees to the right

require "pacman/version"
require "pacman/puck"

module Pacman
  
end
