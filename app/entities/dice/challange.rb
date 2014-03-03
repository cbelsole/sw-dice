module Dice

  class Challange < Die

    def initialize
      @sides = 12
      @values = {
        two: [FAILURE],
        three: [FAILURE],
        four: [FAILURE, FAILURE],
        five: [FAILURE, FAILURE],
        six: [THREAT],
        seven: [THREAT],
        eight: [FAILURE, THREAT],
        nine: [FAILURE, THREAT],
        ten: [THREAT, THREAT],
        eleven: [THREAT, THREAT],
        twelve: [DESPAIR]
      }
    end

  end

end
