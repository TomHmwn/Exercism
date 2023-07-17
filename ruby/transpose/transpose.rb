=begin
Write your code for the 'Transpose' exercise in this file. Make the tests in
`transpose_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/transpose` directory.
=end
class Transpose
  def self.transpose(input)
    return input if input == ""
    lines = input.split("\n")
    max_width = lines.map(&:length).max
    lines
      .map { |x| x.ljust max_width, "$"}
      .map(&:chars)
      .transpose
      .map(&:join)
      .join("\n")
      .gsub(/\$+$/, "")
      .gsub(/\$/, " ")

    # input.split("\n").map(&:chars).reduce(&:zip)
  end
end
