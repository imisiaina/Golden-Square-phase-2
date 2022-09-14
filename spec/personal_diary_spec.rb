require 'personal_diary'

RSpec.describe "make_snippet method" do
    context "given an empty string" do
        it "returns an empty string" do
            result = make_snippet("")
            expect(result).to eq ""
        end
    end

    context "given a string with 5 words" do
        it "returns the string" do
            result = make_snippet("Hi my name is one")
            expect(result).to eq "Hi my name is one"
        end
    end

    context "given a string with more than 5 words" do
        it "returns the first 5 words followed by ..." do
            result = make_snippet("Hi my name is John please help me")
            expect(result).to eq "Hi my name is John..."
        end
    end
end