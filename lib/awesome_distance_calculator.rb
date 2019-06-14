require 'awesome_distance_calculator/version'
require 'awesome_distance_calculator/models/location'
require 'awesome_distance_calculator/strategies/haversine'

module AwesomeDistanceCalculator
  StrategyNotYetImplemented = Class.new(StandardError)
  Strategies = {
    'haversine' => Haversine
  }.freeze

  def calculate(coordinates:, strategy: 'haversine')
    strat = Strategies.fetch(strategy)

    strat.call(*coordinates)

  rescue KeyError => e
    raise StrategyNotYetImplemented.new(e)
  end
end
