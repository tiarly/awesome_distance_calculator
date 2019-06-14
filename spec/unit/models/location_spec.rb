# frozen_string_literal: true

module AwesomeDistanceCalculator
  RSpec.describe Location do
    let(:instance) { described_class.new(42.23, -5.54) }

    context 'attributes' do
      it 'allows reading for Latitude' do
        expect(instance.lat).to eql 42.23
      end

      it 'allows reading for Longitude' do
        expect(instance.long).to eql(-5.54)
      end
    end

    context '.to_r' do
      it 'returns the location converted in radius' do
        expect(instance.to_r).to eql [0.7370525431172054, -0.09669124056048586]
      end
    end
  end
end
