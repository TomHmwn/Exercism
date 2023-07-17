# frozen_string_literal: true

class Year
  def self.leap?(year)
    if (year % 400).zero?
      true
    else
      (year % 4).zero? && year % 100 != 0 ? true : false
    end
  end
end
