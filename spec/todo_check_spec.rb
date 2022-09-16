require 'todo_check'

RSpec.describe "todo_check method" do
    context "When given a string with #TODO" do
        it "returns true" do
            result = todo_check("Today my list tells me #TODO this task")
            expect(result).to eq true
        end
    end

    context "When given a string with #TODO" do
        it "returns false" do
            result = todo_check("Today my list tells me about this task")
            expect(result).to eq false
        end
    end
end