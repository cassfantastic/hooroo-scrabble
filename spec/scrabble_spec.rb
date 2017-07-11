# spec/scrabble_spec.rb
require "scrabble"
describe Scrabble do
    let(:game) {Scrabble.new}
    describe ".score" do
        context "given an empty string" do
            it "returns zero" do
                expect(game.score("")).to eql(0)
            end
        end
        context "given a nil input" do
            it "returns zero" do
                expect(game.score(nil)).to eql(0)
            end
        end
        context "given a string \"hello\"" do
            it "returns eight" do
                expect(game.score("hello")).to eql(8)
            end
        end
        context "given a string \"cabbage\"" do
            it "returns fourteen" do
                expect(game.score("cabbage")).to eql(14)
            end
        end
    end
end
