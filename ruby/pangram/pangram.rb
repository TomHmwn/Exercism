class Pangram
    a = []
    def self.pangram? (string)
        ("a".."z").all? {|alphabet| string.downcase.include?(alphabet) }
    end
end