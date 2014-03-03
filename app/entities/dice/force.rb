module Dice

  class Force < Die

    def initialize
      @sides = 12
      @values = {
        one: [DARK],
        two: [DARK],
        three: [DARK],
        four: [DARK],
        five: [DARK],
        six: [DARK],
        seven: [DARK, DARK],
        eight: [LIGHT],
        nine: [LIGHT],
        ten: [LIGHT, LIGHT],
        eleven: [LIGHT, LIGHT],
        twelve: [LIGHT, LIGHT]
      }
    end

  end

end
