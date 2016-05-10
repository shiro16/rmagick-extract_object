module Magick
  module ExtractObject
    class Config
      attr_accessor :slope, :mask_color, :content_type

      def initialize
        @slope       = 10_000_000
        @mask_color   = "red"
        @content_type = []
      end
    end
  end
end
