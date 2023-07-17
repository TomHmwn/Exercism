=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples
  def initialize *args
    @args = args
  end

  def to number
    # multiples = []
    # @args.each do |arg|
    #   (1...number).each do |num|
    #     multiples << num if num % arg == 0
    #   end
    # end
    # multiples.uniq.sum
    multiples = []
    @args.each do |arg|
      (1...number).each do |num|
        multiples << num if num % arg === 0
      end
    end
    multiples.uniq.sum
  end
end