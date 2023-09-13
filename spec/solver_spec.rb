require 'rspec'
require './solver'

describe Solver do
  describe '#factorial' do
    it 'should have 1 argument' do
      expect(Solver.new.method(:factorial).arity).to(eq(1))
    end

    it 'returns the correct factorial for positive integers' do
      expect(Solver.new.factorial(5)).to eq 120
      expect(Solver.new.factorial(3)).to eq 6
    end

    it 'if the number is 0, factorial should be 1' do
      expect(Solver.new.factorial(0)).to eq 1
    end

    it 'if the number is negative, it should raise an exception' do
      expect { Solver.new.factorial(-5) }.to(raise_error(ArgumentError))
    end
  end
  describe '#reverse' do
    it 'should return one argument' do
      expect(Solver.new.method(:reverse).arity).to(eq(1))
    end
    it 'should return reversed word' do
      expect(Solver.new.reverse('hello')).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it 'return one argument' do
      expect(Solver.new.method(:fizzbuzz).arity).to(eq(1))
    end
    it 'should return fizz if number is divisible by 3' do
      expect(Solver.new.fizzbuzz(3)).to eq 'fizz'
    end
    it 'should return buzz if number is divisible by 5' do
      expect(Solver.new.fizzbuzz(5)).to eq 'buzz'
    end
    it 'should return fizzbuzz if number is divisible by 5 and 3' do
      expect(Solver.new.fizzbuzz(15)).to eq 'fizzbuzz'
    end
  end
end
