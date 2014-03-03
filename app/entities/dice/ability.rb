module Dice

  class Ability < Die

    def initialize
      @sides = 8
      @values = {
        two: [SUCCESS],
        three: [SUCCESS],
        four: [SUCCESS, SUCCESS],
        five: [ADVANTAGE],
        six: [ADVANTAGE],
        seven: [SUCCESS, ADVANTAGE],
        eight: [ADVANTAGE, ADVANTAGE]
      }
    end

  end

end
