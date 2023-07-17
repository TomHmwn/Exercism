# frozen_string_literal: true

class TwelveDays
  GIFTS = {
    first: 'a Partridge in a Pear Tree',
    second: 'two Turtle Doves',
    third: 'three French Hens',
    fourth: 'four Calling Birds',
    fifth: 'five Gold Rings',
    sixth: 'six Geese-a-Laying',
    seventh: 'seven Swans-a-Swimming',
    eighth: 'eight Maids-a-Milking',
    ninth: 'nine Ladies Dancing',
    tenth: 'ten Lords-a-Leaping',
    eleventh: 'eleven Pipers Piping',
    twelfth: 'twelve Drummers Drumming'
  }.freeze
  def self.song
    ans = "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n\n"
    str = ''
    GIFTS.each do |k, v|
      next if v == 'a Partridge in a Pear Tree'

      str = "#{v}, #{str}"
      ans += "On the #{k} day of Christmas my true love gave to me: #{str}and a Partridge in a Pear Tree.\n#{if v != 'twelve Drummers Drumming'
                                                                                                               "\n"
                                                                                                             end}"
    end
    ans
  end
end
