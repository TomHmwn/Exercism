# frozen_string_literal: true

# squares of number class
class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..@number).to_a.sum**2
  end

  def sum_of_squares
    (1..@number).to_a.map { |number| number**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

