require 'grammar_check'

RSpec.describe 'grammar_check method' do
    context "When given a text with no capital letter or punctuation" do
        it "returns 'No capital letter and no punctuation!'" do
            result = grammar_check("hey this is a sentence")
            expect(result).to eq "No capital letter and no punctuation!"
        end
    end

    context "When given a text with no capital letter" do
        it "returns 'No capital letter!'" do
            result = grammar_check("hey this is a sentence.")
            expect(result).to eq "No capital letter!"
        end
    end

    context "When given a text with no punctuation" do
        it "returns 'No punctuation!'" do
            result = grammar_check("Hey this is a sentence")
            expect(result).to eq "No punctuation!"
        end
    end

    context "When given grammatically correct text" do
        it "returns 'Correct Grammar" do
            result = grammar_check("Hey this is a sentence.")
            expect(result).to eq "Correct Grammar"
        end
    end


end