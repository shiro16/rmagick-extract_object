require 'spec_helper'

describe Magick::ExtractObject do
  it 'has a version number' do
    expect(Magick::ExtractObject::VERSION).not_to be nil
  end

  describe '.configure' do
    before do
      Magick::ExtractObject.configure do |config|
        config.mask_color = "blue"
        config.slope      = 10
      end
    end

    it { expect(Magick::ExtractObject.config.mask_color).to eq("blue") }
    it { expect(Magick::ExtractObject.config.slope).to eq(10) }
  end
end
