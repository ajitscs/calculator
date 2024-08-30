require 'calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    describe 'input datatype check' do
      it 'returns error if input is not a string' do
        expect { calculator.add(5) }.to raise_error(ArgumentError, 'Input must be a string')
      end

      it 'returns a number if input is a string' do
        expect(calculator.add("")).to be_a(Integer)
      end
    end
  end
end
