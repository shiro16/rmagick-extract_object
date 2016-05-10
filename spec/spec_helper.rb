$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rmagick/extract_object'

Magick::ExtractObject.configure do |config|
  config.content_type = %W(image/jpg image/jpeg image/pjpeg image/gif image/png image/x-png)
end
