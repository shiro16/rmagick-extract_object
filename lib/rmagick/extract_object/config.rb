module ExtractObject
  class Config
    attr_accessor :threshold, :mask_color

    def initialize
      @threshold  = 10_000_000
      @mask_color = "red"
    end
  end
end
