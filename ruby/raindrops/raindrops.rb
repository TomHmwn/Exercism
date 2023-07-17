# frozen_string_literal: true

class Raindrops
  def self.convert(n)
    if (n % 3).zero?
      if (n % 5).zero?
        if (n % 7).zero?
          'PlingPlangPlong'
        else
          'PlingPlang'
        end

      elsif (n % 7).zero?
        'PlingPlong'
      else
        'Pling'
      end
    elsif (n % 5).zero?
      if (n % 3).zero?
        'PlangPlong'
      elsif (n % 7).zero?
        'PlangPlong'
      else
        'Plang'
      end
    elsif (n % 7).zero?
      if (n % 3).zero?
        'PlongPling'
      elsif (n % 5).zero?
        'PlongPlang'
      else
        'Plong'
      end
    else
      n.to_s
    end
  end
end
