# Code-Challenge-1

Code problem details:

-----------

Pacman Simulator

Description:

- The application is a simulation of Pacman moving on in a grid, of dimensions 5 units x 5 units.
- There are no other obstructions on the grid.
- Pacman is free to roam around the surface of the grid, but must be prevented from moving off the grid. Any movement that would result in Pacman moving off the grid must  be prevented, however further valid movement commands must still be allowed.
- Create an application that can read in commands of the following form -

```
PLACE X,Y,F

MOVE

LEFT

RIGHT

REPORT
```

- PLACE will put the Pacman on the grid in positon X,Y and facing NORTH,SOUTH, EAST or WEST.
- The origin (0,0) can be considered the SOUTH WEST most corner.
- The first valid command to Pacman is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command. The application should discard all commands in the sequence until a valid PLACE command has been executed.
- MOVE will move Pacman one unit forward in the direction it is currently facing.
- LEFT and RIGHT will rotate Pacman 90 degrees in the specified direction without changing the position of Pacman.
- REPORT will announce the X,Y and F of Pacman. This can be in any form, but standard output is sufficient.
- Pacman that is not on the grid can choose the ignore the MOVE, LEFT, RIGHT and REPORT commands.
- Input can be from a file, or from standard input, as the developer chooses.
- Provide test data to exercise the application.

**Constraints:**

- Pacman must not move off the grid during movement. This also includes the initial placement of Pacman.
- Any move that would cause Pacman to fall must be ignored.

Example Input and Output:
```
a)
PLACE 0,0,NORTH

MOVE

REPORT

Output: 0,1,NORTH
```
```
b)

PLACE 0,0,NORTH

LEFT

REPORT

Output: 0,0,WEST
```
```
c)

PLACE 1,2,EAST

MOVE

MOVE

LEFT

MOVE

REPORT

Output: 3,3,NORTH
```

**Deliverables:**
- Spend as little or as much time as you like on the challenge.
- The code you produce can be in any language
- *It is not required to provide any graphical output* showing the movement of Pacman.
- The output of the efforts *must be committed back into a Public Repo in Github* and the URL shared back for review.
- Proving your code works via unit testing is highly encouraged

# Pacman

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/pacman`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pacman'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pacman

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pacman.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
# pacman
