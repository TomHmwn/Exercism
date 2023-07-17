# frozen_string_literal: true

## Creating a matrix from string
class Matrix
  def initialize(matrix)
    @matrix = matrix.split("\n")
    @matrix.each_with_index do |row, index|
      @matrix[index] = row.split(' ').map(&:to_i)
    end
  end

  def row(no)
    @matrix[no - 1]
  end

  def column(no)
    column = []
    @matrix.each do |row|
      column << row[no - 1]
    end
    column
  end
end
