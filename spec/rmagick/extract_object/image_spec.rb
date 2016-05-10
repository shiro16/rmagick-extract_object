require 'spec_helper'

describe Magick::ExtractObject::Image do
  let(:image) do
    Magick::ExtractObject::Image.new('spec/fixtures/test.jpg')
  end

  describe '#initialize' do
    context 'when argment bad mime type file path' do
      it { expect { Magick::ExtractObject::Image.new('spec/fixtures/test.png') }.to raise_error(RuntimeError) }
    end
  end

  describe '#transparent_background' do
    it { expect(image.transparent_background).to be_kind_of(Magick::Image) }
  end

  describe '#edge' do
    it { expect(image.edge).to be_kind_of(Magick::Image) }
  end

  describe '#mask' do
    it { expect(image.mask).to be_kind_of(Magick::Image) }
  end
end
