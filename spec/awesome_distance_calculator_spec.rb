# frozen_string_literal: true

RSpec.describe AwesomeDistanceCalculator do
  let(:instance) do
    Class.tap do |klass|
      klass.include AwesomeDistanceCalculator
    end.new
  end

  context '.calculate' do
    it 'calculates distance using default haversine strategy' do
      expect(instance.calculate(coordinates: [
                                  [53.339428, -6.257664],
                                  [52.986375, -6.043701]
                                ])).to eql 41.81553584459387
    end
  end
end
