require 'spec_helper'

describe Rspark::Spark do
  let(:s) {
    Rspark::Spark.new(
      values: [10, 15, 25, 50, 40, 20]
    )
  }

  describe "#pretty_print" do
    it "should return the graph when direction is horizontal" do
      expect(s.pretty_print).to eq("▂▃▄█▆▃")
    end

    it "should return the graph when direction is vertical" do
      s.direction = "vertical"
      expect(s.pretty_print).to eq("▎\n▍\n▌\n█\n▊\n▍\n")
    end

    it "should return error when max is less than the maximum value in values" do
      s.max = 45
      expect(s.pretty_print).to eq("Your maximum is less than the maximum value found in values")
    end
  end
end
