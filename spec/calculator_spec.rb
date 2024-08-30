require './calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe '#add' do
    describe 'input datatype check' do
      it 'returns error if input is not a string' do
        expect { calculator.add(5) }.to raise_error(ArgumentError, 'Input must be a string')
      end

      it 'returns a number if input is a string' do
        expect(calculator.add("")).to be_a(Integer)
      end
    end

    describe 'input as comma separated number' do
      it 'returns 0 if string is blank' do
        expect(calculator.add("")).to eq(0)
      end

      it 'returns number if input is one number' do
        expect(calculator.add("2")).to eq(2)
      end

      it 'returns sum of numbers if input is multiple numbers' do
        expect(calculator.add("2, 4, 8")).to eq(14)
      end
    end

    describe 'input with \n character' do
    end

    describe 'input with delimiters' do
    end

    describe 'negative numbers' do
    end
  end
end
