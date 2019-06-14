module AwesomeDistanceCalculator
  class Haversine
    EARH_RADIUS = 6378.14

    class << self
      include Math

      def call(*locations)
        delta = delta_for(locations)

        great_circle_distance = 2 * atan2(Math::sqrt(delta), sqrt(1-delta))

        EARH_RADIUS * great_circle_distance
      end

      private

      def delta_for(locations)
        loc1, loc2 = Location.for_multi(locations)

        rlat1, rlong1, rlat2, rlong2 = [loc1.to_r, loc2.to_r].flatten

        dlon = rlong1 - rlong2
        dlat = rlat1 - rlat2

        sin(dlat/2)**2 + (cos(rlat1) * cos(rlat2) * sin(dlon/2)**2)
      end
    end
  end
end
