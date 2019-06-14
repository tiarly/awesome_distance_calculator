module AwesomeDistanceCalculator
  module CoreExt
    refine Numeric do
      def to_rad
        self * Math::PI/180
      end
    end
  end

  class Location
    using CoreExt

    attr_reader :lat, :long

    class << self
      def for_multi(locations)
        locations.map do |location|
          self.for(location)
        end
      end

      def for(location)
        return location if location.is_a?(Location)

        new(location[0], location[1])
      end
    end

    def initialize(lat, long)
      @lat = lat
      @long = long
    end

    def to_r
      [lat, long].map { |x| x.to_rad }
    end
  end
end
