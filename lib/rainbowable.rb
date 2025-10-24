# frozen_string_literal: true

module Rainbowable # rubocop:disable Style/Documentation
  def rainbow
    to_s.each_char.map.with_index do |char, count| # rubocop:disable Style/StringConcatenation
      color = 31 + count % 6
      "\e[#{color}m#{char}"
    end.join + "\e[0m"
  end
end
