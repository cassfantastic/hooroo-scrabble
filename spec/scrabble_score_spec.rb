# spec/scrabble_score_spec.rb
require "scrabble_score"
describe ScrabbleScore do
    describe ".score" do
        context "given an empty string" do
            it "returns zero" do
                expect(ScrabbleScore.score("")).to eql(0)
            end
        end
        context "given a nil input" do
            it "returns zero" do
                expect(ScrabbleScore.score(nil)).to eql(0)
            end
        end
        context "given a string \"hello\"" do
            it "returns eight" do
                expect(ScrabbleScore.score("hello")).to eql(8)
            end
        end
        context "given a string \"cabbage\"" do
            it "returns fourteen" do
                expect(ScrabbleScore.score("cabbage")).to eql(14)
            end
        end
    end
end
