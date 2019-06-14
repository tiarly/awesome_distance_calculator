# frozen_string_literal: true

module AwesomeDistanceCalculator
  class Haversine
    EARH_RADIUS = 6378.14

    class << self
      include Math

      def call(*locations)
        delta = delta_for(locations)

        great_circle_distance = 2 * atan2(Math.sqrt(delta), sqrt(1 - delta))

        EARH_RADIUS * great_circle_distance
      end

      private

      # rubocop:disable Metrics/AbcSize
      def delta_for(locations)
        rlat1, rlong1, rlat2, rlong2 =
          Location.for_multi(locations).map(&:to_r).flatten

        dlon = rlong1 - rlong2
        dlat = rlat1 - rlat2

        sin(dlat / 2)**2 + (cos(rlat1) * cos(rlat2) * sin(dlon / 2)**2)
      end
      # rubocop:enable Metrics/AbcSize
    end
  end
end
