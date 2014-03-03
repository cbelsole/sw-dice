module Dice

  class Boost < Die

    def initialize
      @sides = 6
      @values = {
        three: [SUCCESS],
        four: [SUCCESS, ADVANTAGE],
        five: [ADVANTAGE, ADVANTAGE],
        six: [ADVANTAGE]
      }
    end

  end

end
