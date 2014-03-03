module Dice

  class Difficulty < Die

    def initialize
      @sides = 8
      @values = {
        two: [FAILURE],
        three: [FAILURE, FAILURE],
        four: [THREAT],
        five: [THREAT],
        six: [THREAT],
        seven: [THREAT, THREAT],
        eight: [FAILURE, THREAT]
      }
    end

  end

end
