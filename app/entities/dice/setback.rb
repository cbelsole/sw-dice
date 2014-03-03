module Dice

  class Setback < Die

    def initialize
      @sides = 6
      @values = {
        three: [FAILURE],
        four: [FAILURE],
        five: [THREAT],
        six: [THREAT]
      }
    end

  end

end
