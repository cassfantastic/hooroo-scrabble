# spec/scrabble_spec.rb
require "scrabble"
describe Scrabble do
    let(:game) {Scrabble.new}

    describe ".score" do
        context "when given an empty string" do
            it "returns zero" do
                expect(game.score("")).to eql(0)
            end
        end
        context "when given a nil input" do
            it "returns zero" do
                expect(game.score(nil)).to eql(0)
            end
        end
        context "when given a string \"hello\"" do
            it "returns eight" do
                expect(game.score("hello")).to eql(8)
            end
        end
        context "when given a string \"cabbage\"" do
            it "returns fourteen" do
                expect(game.score("cabbage")).to eql(14)
            end
        end
        context "when given a string \"hello\" and a double letter score on the o" do
            let(:multipliers) {[1, 1, 1, 1, 2]}
            it "returns nine" do    
                expect(game.score("hello", letterScoreModifier: true, letterScoreMults: multipliers)).to eql(9)
            end
        end
        context "when given a string \"cabbage\" with a double word score" do
            let(:multipliers) {[2]}
            it "returns twenty-eight" do
                expect(game.score(word = "cabbage", wordScoreModifier: true, wordScoreMults: multipliers)).to eql(28)
            end
        end
    end
end
