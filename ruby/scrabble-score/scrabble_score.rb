class Scrabble
    SCORE = {/[AEIOULNRST]/=> 1, /[DG]/=>2, /[BCMP]/=>3, /[FHVWY]/=>4, /[K]/=>5, /[JX]/=>8, /[QZ]/=>10}
    def initialize(word)
        @word = word.upcase
    end
    def score
        score = 0
        SCORE.each do |letters, value|
            score += @word.scan(letters).count * value
        end
        score
    end
end