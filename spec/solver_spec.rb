require 'rspec'
require './solver'


describe Solver do
  describe '#factorial' do
    it 'should have 1 argument' do
      expect(Solver.new.method(:factorial).to(eq(1)))
    end
  end
end
