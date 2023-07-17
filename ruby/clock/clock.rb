# frozen_string_literal: true

# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.
class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    hour += minute / 60
    @hour = hour % 24
    @minute = minute % 60
  end

  def to_s
    format('%02d:%02d', @hour, @minute)
  end

  def +(other)
    Clock.new(minute: @minute + other.minute, hour: @hour + other.hour)
  end

  def -(other)
    Clock.new(minute: @minute - other.minute, hour: @hour - other.hour)
  end

  def ==(other)
    @minute == other.minute && @hour == other.hour
  end
end
