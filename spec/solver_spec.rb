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
      expect{Solver.new.factorial(-5)}.to (raise_error(ArgumentError))
  end
end
end