require 'grammar_stats'

RSpec.describe GrammarStats do

    describe "check" do
        context "When given a string with no text" do
            it "fails" do
                grammar_stats = GrammarStats.new
                expect{grammar_stats.check("")}.to raise_error "No text input!"
            end
        end
    

        context "When text starts with capital letter and ends with punctuation" do
            it "returns true" do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("Hello this is a test?")).to eq true
            end
        end

        context"When text doesn't start with a capital letter and doesn't end with punctuation" do
            it "returns false" do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("hello this is a test")).to eq false
            end
        end
    end

    describe "percentage_good" do
        context "when checks passed equal 50%" do
            it "returns the percentage of passed checks as 50%" do
                grammar_stats = GrammarStats.new
                grammar_stats.check("Hello!")
                grammar_stats.check ("hello")
                expect(grammar_stats.percentage_good).to eq 50
            end
        end
        context "when checks passed equal 100%" do
            it "returns the percentage of passed checks as 100%" do
                grammar_stats = GrammarStats.new
                grammar_stats.check("Hello!")
                grammar_stats.check("Hello.")
                grammar_stats.check("Hello?")
                expect(grammar_stats.percentage_good).to eq 100
            end
        end
    end
end