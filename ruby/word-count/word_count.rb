class Phrase
    def initialize(words)
       p  @words = words.downcase.scan(/\b[\w']+\b/)
    end
    def word_count
        @words.group_by {|word| word.itself}.transform_values{ |value| value.count }
    end
end