# frozen_string_literal: true

class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError, 'Not the same length' if dna1.size != dna2.size

    # dna1.split("").each_with_index do |char, index|
    #     diff += 1 if dna2.split("")[index] == char
    # end
    (0..dna1.length).count do |i|
      dna1[i] != dna2[i]
    end
  end
end
