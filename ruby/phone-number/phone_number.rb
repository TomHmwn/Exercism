=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end
class PhoneNumber
  def self.clean(number)
    # number = number.gsub(/[^0-9]/, '')
    # return nil if number.length < 10 || number.length > 11
    # return nil if number.length == 11 && number[0] != '1'
    # return nil if number[3] == '0' || number[3] == '1'
    # number = number[1..-1] if number.length == 11
    # number
    number = number.gsub(/[^0-9]/, "")
    return nil if number.length < 10 || number.length > 11

    return nil if number.length == 11 && number[0] != "1"
    return nil if number[0].include?("0") || number[3].include?("0") ||  number[3].include?("1")
    return nil if number.length == 10 && number[0] == "1"
    if number.length == 11
      if number[1].include?("0") || number[1].include?("1") || number[4].include?("0") || number[4].include?("1")
        return nil
      end
      number = number[1..-1]
    end

    number
  end
end