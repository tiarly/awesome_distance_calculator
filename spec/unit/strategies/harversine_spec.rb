# frozen_string_literal: true

module AwesomeDistanceCalculator
  RSpec.describe Haversine do
    context '#call' do
      context 'when sending actual location objects' do
        it 'returns the distance between two locations' do
          loc1 = Location.new(53.339428, -6.257664)
          loc2 = Location.new(52.986375, -6.043701)

          expect(Haversine.call(loc1, loc2)).to eql 41.81553584459387
        end
      end

      context 'when sending string objects' do
        it 'returns the distance between two locations' do
          expect(Haversine.call([53.339428, -6.257664], [52.986375, -6.043701]))
            .to eql 41.81553584459387
        end
      end
    end
  end
end
