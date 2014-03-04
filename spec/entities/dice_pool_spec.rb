require 'spec_helper'

describe DicePool do

  describe '#initialize' do
    it 'returns an array of ability, boost, challenge,  difficulty, force, proficiency, and setback dice only' do
      dicePool = described_class.new(:ability, :boost, :challenge, :difficulty, :force, :proficiency, :setback, :cat)
      expect(dicePool.dice.length).to eq(7)
      expect(dicePool.dice[0].instance_of?(Dice::Ability)).to be_true
      expect(dicePool.dice[1].instance_of?(Dice::Boost)).to be_true
      expect(dicePool.dice[2].instance_of?(Dice::Challenge)).to be_true
      expect(dicePool.dice[3].instance_of?(Dice::Difficulty)).to be_true
      expect(dicePool.dice[4].instance_of?(Dice::Force)).to be_true
      expect(dicePool.dice[5].instance_of?(Dice::Proficiency)).to be_true
      expect(dicePool.dice[6].instance_of?(Dice::Setback)).to be_true
    end
  end

  describe '#roll' do

  end
end
