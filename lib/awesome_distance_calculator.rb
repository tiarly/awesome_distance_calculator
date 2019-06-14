# frozen_string_literal: true

require 'awesome_distance_calculator/version'
require 'awesome_distance_calculator/models/location'
require 'awesome_distance_calculator/strategies/haversine'

module AwesomeDistanceCalculator
  StrategyNotYetImplemented = Class.new(StandardError)
  STRATEGIES = {
    'haversine' => Haversine
  }.freeze

  # This method smells of :reek:UncommunicativeVariableName
  def calculate(coordinates:, strategy: 'haversine')
    strat = STRATEGIES.fetch(strategy)

    strat.call(*coordinates)
  rescue KeyError => e
    raise StrategyNotYetImplemented, e
  end
end
