# frozen_string_literal: true

## Getting aronyms of a string
class Acronym
  def self.abbreviate(string)
    string.split(/\W/).freeze.map { |word| word[0] }.join.upcase
  end
end
