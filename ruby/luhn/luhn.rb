class Luhn
    def self.valid?(pin)
        p pin.gsub(/[\s]/,"").tap{|s| return false unless s.match(/\A\d\d+\z/)}.chars.reverse.map.with_index { |digit, index| index.odd? ? digit.to_i * 2 : digit.to_i }.map{|d| d > 9 ? d - 9: d}.sum % 10 == 0
    end
end