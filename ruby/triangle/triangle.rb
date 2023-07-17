# frozen_string_literal: true

# Write your code for the 'Triangle' exercise in this file. Make the tests in
# `triangle_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/triangle` directory.
class Triangle
  def initialize(sides)
    @a, @b, @c = sides
  end

  def isTriangle?
    @a + @b >= @c && @b + @c >= @a && @a + @c >= @b && @a.positive? && @b.positive? && @c.positive?
  end

  def equilateral?
    @a == @b && @b == @c && isTriangle?
  end

  def isosceles?
    (@a == @b || @a == @c || @b == @c) && isTriangle?
  end

  def scalene?
    @a != @b && @a != @c && @b != @c && isTriangle?
  end
end
