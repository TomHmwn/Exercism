# frozen_string_literal: true

class Isogram
  def self.isogram?(input)
    phrase = input.downcase.scan(/\w/)
    phrase == phrase.uniq
  end
end
