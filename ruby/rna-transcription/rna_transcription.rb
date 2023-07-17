# frozen_string_literal: true

# Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
# `rna_transcription_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/rna-transcription` directory.

class Complement
  SEQUENCE = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze
  def self.of_dna(nucleotide)
    str = ''
    nucleotide.each_char do |char|
      char.empty? ? '' : str += SEQUENCE[char]
    end
    str
  end
end
