# spec/scrabble_spec.rb
require "scrabble"
describe Scrabble do
    describe ".score" do
        context "given an empty string" do
            it "returns zero" do
                expect(Scrabble.score("")).to eql(0)
            end
        end
        context "given a nil input" do
            it "returns zero" do
                expect(Scrabble.score(nil)).to eql(0)
            end
        end
        context "given a string \"hello\"" do
            it "returns eight" do
                expect(Scrabble.score("hello")).to eql(8)
            end
        end
        context "given a string \"cabbage\"" do
            it "returns fourteen" do
                expect(Scrabble.score("cabbage")).to eql(14)
            end
        end
    end
end
