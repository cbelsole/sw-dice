module Dice

  class Proficiency < Die

    def initialize
      @sides = 12
      @values = {
        two: [SUCCESS],
        three: [SUCCESS],
        four: [SUCCESS, SUCCESS],
        five: [SUCCESS, SUCCESS],
        six: [ADVANTAGE],
        seven: [SUCCESS, ADVANTAGE],
        eight: [SUCCESS, ADVANTAGE],
        nine: [SUCCESS, ADVANTAGE],
        ten: [ADVANTAGE, ADVANTAGE],
        eleven: [ADVANTAGE, ADVANTAGE],
        twelve: [TRIUMPH]
      }
    end

  end

end
