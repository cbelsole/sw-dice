class DicePool

  attr_reader :dice, :pool

  def initialize(*dice)
    @dice = dice.map { |die|
      case die
      when :ability
        Dice::Ability.new
      when :boost
        Dice::Boost.new
      when :challenge
        Dice::Challenge.new
      when :difficulty
        Dice::Difficulty.new
      when :force
        Dice::Force.new
      when :proficiency
        Dice::Proficiency.new
      when :setback
        Dice::Setback.new
      end
    }.compact
  end

  def roll
    @pool = @dice.flat_map do |die|
      die.roll
    end
  end

  def resolve
    success = @poll.count(Dice::Die.success)
    failure = @poll.count(Dice::Die.failure)

    advantage = @poll.count(Dice::Die.advantage)
    threat = @poll.count(Dice::Die.threat)

    triumph = @poll.count(Dice::Die.triumph)
    despair = @poll.count(Dice::Die.despair)

    light = @poll.count(Dice::Die.light)
    dark = @poll.count(Dice::Die.dark)

    success += triumph
    failure += despair

    result = []

    results += (success - failure).abs.times.map { success > failure ? Dice::Die.success : Dice::Die.failure }
    results += (advantage - threat).abs.times.map { advantage > threat ? Dice::Die.advantage : Dice::Die.threat }

    results += triumph.times.map { Dice::Die.triumph }
    results += despair.times.map { Dice::Die.despair }

    results += light.times.map { Dice::Die.light }
    results += dark.times.map { Dice::Die.dark }

    results.flatten
  end

end
