require 'spec_helper'

shared_examples 'rolling a number on a die' do |roll_value, side_values|
  context 'when the number rolled has a valid value' do
    before do
      described_class.any_instance.stub(:rand_roll).and_return(roll_value)
    end

    let(:die) {
      die = described_class.new
      die.instance_variable_set(:@values, side_values)
      die.instance_variable_set(:@sides, 12)
      die
    }

    it "returns an array with values on a #{roll_value}" do
      expect(die.roll).to eq(roll_value)
    end
  end

  context 'when the number rolled does not have a valid value' do
    before do
      described_class.any_instance.stub(:rand_num).and_return(roll_value)
    end

    let(:die) {
      die = described_class.new
      die.instance_variable_set(:@values, {})
      die.instance_variable_set(:@sides, 12)
      die
    }

    it "returns an array with values on a #{roll_value + 1}" do
      expect(die.roll).to eq([])
    end
  end
end

describe Dice::Die do

  describe '#roll' do
    it_behaves_like 'rolling a number on a die', 1, {one: 1}
    it_behaves_like 'rolling a number on a die', 2, {two: 2}
    it_behaves_like 'rolling a number on a die', 3, {three: 3}
    it_behaves_like 'rolling a number on a die', 4, {four: 4}
    it_behaves_like 'rolling a number on a die', 5, {five: 5}
    it_behaves_like 'rolling a number on a die', 6, {six: 6}
    it_behaves_like 'rolling a number on a die', 7, {seven: 7}
    it_behaves_like 'rolling a number on a die', 8, {eight: 8}
    it_behaves_like 'rolling a number on a die', 9, {nine: 9}
    it_behaves_like 'rolling a number on a die', 10, {ten: 10}
    it_behaves_like 'rolling a number on a die', 11, {eleven: 11}
    it_behaves_like 'rolling a number on a die', 12, {twelve: 12}
  end

  describe '.success' do
    it 'returns the success symbol' do
      expect(described_class.success).to eq(:success)
    end
  end

  describe '.failure' do
    it 'returns the failure symbol' do
      expect(described_class.failure).to eq(:failure)
    end
  end

  describe '.advantage' do
    it 'returns the advantage symbol' do
      expect(described_class.advantage).to eq(:advantage)
    end
  end

  describe '.threat' do
    it 'returns the threat symbol' do
      expect(described_class.threat).to eq(:threat)
    end
  end

  describe '.triumph' do
    it 'returns the triumph symbol' do
      expect(described_class.triumph).to eq(:triumph)
    end
  end

  describe '.despair' do
    it 'returns the despair symbol' do
      expect(described_class.despair).to eq(:despair)
    end
  end

  describe '.light' do
    it 'returns the light symbol' do
      expect(described_class.light).to eq(:light)
    end
  end

  describe '.dark' do
    it 'returns the dark symbol' do
      expect(described_class.dark).to eq(:dark)
    end
  end

end
