# lib/scrabble

class Scrabble
    LetterValues = {
        "A" => 1, "B" => 3, "C" => 3, "D" => 2,
        "E" => 1, "F" => 4, "G" => 2, "H" => 4,
        "I" => 1, "J" => 8, "K" => 5, "L" => 1,
        "M" => 3, "N" => 1, "O" => 1, "P" => 3,
        "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
        "U" => 1, "V" => 4, "W" => 4, "X" => 8,
        "Y" => 4, "Z" => 10
    }
    
    def score(
        word,
        letterScoreModifier: false,
        letterScoreMults: [0],
        wordScoreModifier: false,
        wordScoreMults: [0]
    )
        return 0 if (word == "") or (word == nil)
        word = word.upcase
        word_score = 0
        word.each_char.each_with_index do |c, c_index|
            return 0 if (LetterValues[c] == nil)
            if (letterScoreModifier)
                word_score += LetterValues[c]*letterScoreMults[c_index]
            else
                word_score += LetterValues[c]
            end
        end
        if wordScoreModifier
            wordScoreMultiplier = wordScoreMults.reduce(:*)
            return word_score * wordScoreMultiplier
        end
        return word_score
    end
end