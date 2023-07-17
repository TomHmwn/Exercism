# frozen_string_literal: true

## Create a series of numbers base on the slices given
class Series
  def initialize(string)
    @string = string
  end

  def slices(number)
    raise ArgumentError if number > @string.length

    @string.chars.each_cons(number).map(&:join)
  end
end
