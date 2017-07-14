# hooroo-scrabble
Scrabble score calculator

### Usage

First, instantiate the scrabble class with `game = Scrabble.new`. Scoring works as follows.

#### Examples
```
game.score("word")
    # Calculates the scrabble score for "word"
game.score("word", letterScoreModifier: true, letterScoreMults: [1,2,1,1])
    # Calculates the scrabble score for "word" with a double letter score on the 'o'
game.score("word", wordScoreModifier: true, wordScoreMults: [2,3])
    # Calculates the scrabble score for "word" which passes over both a double and a triple word score.
game.score("word", letterScoreModifier: true, letterScoreMults: [1,2,1,1], wordScoreModifier: true, wordScoreMults: [2,3])
    # Calculates the scrabble score as above, but applying both the double letter score 'o' and the double and triple word scores. 
```

#### Specifics
```
game.score(word)
```
This will calculate the scrabble score for a string `word`.

```
game.score(
    word,
    letterScoreModifier: false,
    letterScoreMults: [],
    wordScoreModifier: false, 
    wordScoreMults: []
    )
```
Calling score this way will calculate the scrabble score for a string `word` that passes over letter or word score multipliers. To calculate a letter score modifier, set `letterScoreModifier` to `true` and `letterScoreMults` to an array of multipliers (e.g. `[1,2,1,1]` would mean that the second letter of a four letter word was on a double letter score space). To calculate a word score modifier, set `wordScoreModifier` to `true` and `wordScoreMults` to an array consisting of the word score multiplers the word passes over (e.g. `[2]` would be just a double word score, `[2, 3]` would mean a double and a triple word score). Letter and word score multipliers can be used at the same time. 


