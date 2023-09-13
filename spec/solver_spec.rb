require 'rspec'
require './solver'

describe Solver do
  describe '#factorial' do
    it 'should have 1 argument' do
      expect(Solver.new.method(:factorial).arity).to(eq(1))
    end

    it 'returns the correct factorial for poitive integers' do
      expect(Solver.new.factorial(5)).to(eq(120))
      expect(Solver.new.factorial(3)).to(eq(6))
    end
  end
end
