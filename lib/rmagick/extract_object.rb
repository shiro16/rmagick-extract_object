require 'rmagick'
require 'mimemagic'
require "rmagick/extract_object/version"
require "rmagick/extract_object/config"
require "rmagick/extract_object/image"

module Magick
  module ExtractObject
    class << self
      def configure
        yield config
      end

      def config
        @config ||= Magick::ExtractObject::Config.new
      end
    end
  end
end
