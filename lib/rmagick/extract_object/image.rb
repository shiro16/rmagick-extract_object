require 'rmagick'

module Magick
  module ExtractObject
    class Image
      attr_accessor :image

      def initialize(path = nil)
        @image = Magick::ImageList.new(path).first if path
      end

      def transparent_background
        image = Magick::ImageList.new << image
        image.alpha = Magick::ActivateAlphaChannel
        image.fx("r", Magick::AlphaChannel).composite(mask, Magick::CenterGravity, Magick::CopyOpacityCompositeOp)
      end

      def edge
        white = Magick::Pixel.new(255*256, 255*256, 255*256)
        black = Magick::Pixel.new(0, 0, 0)

        image = @image.dup
        image.rows.times do |x|
          image.columns.times do |y|
            current = image.pixel_color(x, y)
            next_x  = image.pixel_color(x + 1, y)
            next_y  = image.pixel_color(x, y + 1)

            x = { r: current.red - next_x.red, g: current.green - next_x.green, b: current.blue - next_x.blue }
            y = { r: current.red - next_y.red, g: current.green - next_y.green, b: current.blue - next_y.blue }

            slope = [x[:r]**2 + y[:r]**2, x[:r]**2 + y[:r]**2, x[:r]**2 + y[:r]**2]
            if slope.inject(:+) > config.threshold
              image.pixel_color(x, y, black)
            else
              image.pixel_color(x, y, white)
            end
          end
        end
        image
      end

      def mask
        image = edge
        image.border!(1, 1, 'white')
        image.fuzz = '10%'
        image.color_floodfill(0, 0, config.mask_color).shave!(1, 1).opaque('black', 'white')
      end

      private
      def config
        Magick::ExtractObject.config
      end
    end
  end
end
