require "rspark/spark/version"

module Rspark
  class Spark
    attr_accessor :max, :direction
    attr_reader :values

    HGRAPH = %w(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)
    VGRAPH = %w(▏ ▎ ▍ ▌ ▋ ▊ ▉ █)

    def initialize(options={})
      @values = options[:values]
      @max = options[:max] || @values.max
      @direction = options[:direction] || "horizontal"
    end

    def values=(new_values)
      @values = new_values
      @max = @values.max
    end

    def pretty_print
      generate_result(@direction)
    end

    private

    def bar(num, max, graph)
      index = num * (graph.length - 1) / max
      graph[index]
    end

    def generate_result(direction)
      if @max < @values.max
        return "Your maximum is less than the maximum value found in values"
      end

      result = ""
      case direction
      when "horizontal"
        @values.each do |value|
          result += bar(value, @max, HGRAPH)
        end
      when "vertical"
        @values.each do |value|
          result = result + bar(value, @max, VGRAPH) + "\n"
        end
      end
      result
    end
  end
end
