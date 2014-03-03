module Dice

  class Die

    SUCCESS = :success
    FAILURE = :failure

    ADVANTAGE = :advantage
    THREAT =  :threat

    TRIUMPH = :triumph
    DESPAIR = :despair

    LIGHT = :light
    DARK = :dark

    attr_reader :result

    def roll
      @result = 1 + rand(@sides)

      case result
      when 1
        @values[:one] || []
      when 2
        @values[:two]  || []
      when 3
        @values[:three] || []
      when 4
        @values[:four] || []
      when 5
        @values[:five] || []
      when 6
        @values[:six] || []
      when 7
        @values[:seven] || []
      when 8
        @values[:eight] || []
      when 9
        @values[:nine] || []
      when 10
        @values[:ten] || []
      when 11
        @values[:eleven] || []
      when 12
        @values[:twelve] || []
      else
        []
      end
    end

    def self.success
      SUCCESS
    end

    def self.failure
      FAILURE
    end

    def self.advantage
      ADVANTAGE
    end

    def self.threat
      THREAT
    end

    def self.triumph
      TRIUMPH
    end

    def slef.despair
      DESPAIR
    end

    def self.light
      LIGHT
    end

    def self.dark
      DARK
    end

  end

end
