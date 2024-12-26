require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    context 'when input string is empty ' do
      it 'returns 0' do
        expect(calculator.add('')).to eq(0)
      end
    end

    context 'when input string is only single number' do
      it 'returns the same number' do
        expect(calculator.add('1')).to eq(1)
      end
    end

    context 'when input numbers with comma separated' do
      it 'returns the sum of all numbers' do
        expect(calculator.add('1,5')).to eq(6)
      end
    end

    context 'when input are large amount of numbers with comma separated' do
      it 'returns the sum of all numbers' do
        string = (1..1000).to_a.join(',')
        result = (1..1000).sum
        expect(calculator.add(string)).to eq(result)
      end
    end
  end
end
