module Magick
  module ExtractObject
    class Config
      attr_accessor :slope, :mask_color

      def initialize
        @slope = 10_000_000
        @mask_color = "red"
      end
    end
  end
end
