require 'diary_entry'

RSpec.describe DiaryEntry do
    it "initializes the title and contents instance variables" do
        diary_entry = DiaryEntry.new("title", "contents")
        expect(diary_entry.title).to eq "title"
        expect(diary_entry.contents).to eq "contents"
    end

    describe "@count_words" do
        it "returns the number of words in the contents" do
            diary_entry = DiaryEntry.new("title", "contents")
            expect(diary_entry.count_words).to eq 1
        end

        it "returns 0 when contents is empty" do
            diary_entry = DiaryEntry.new("title", " ")
            expect(diary_entry.count_words).to eq 0
        end
    end
    

    describe "reading_time" do
        it "returns an estimate for the reading time for contents" do
            diary_entry = DiaryEntry.new("title", "contents " * 200)
            expect(diary_entry.reading_time(200)).to eq 1
        end
    end

    describe "reading_chunk" do
        context "If chunk of text is readable" do
            it "returns the chunk of text" do
                diary_entry = DiaryEntry.new("title", "hello this is content")
                chunk = diary_entry.reading_chunk(200, 1)
                expect(chunk).to eq "hello this is content"
            end
        end
        
        context "If chunk of text is unreadable withing the time" do
            it "returns the chunk of text that is readable" do
                diary_entry = DiaryEntry.new("title", "hello this is content")
                chunk = diary_entry.reading_chunk(2, 1)
                expect(chunk).to eq "hello this"
            end
        end

        it "returns the next chunk when called again" do
            diary_entry = DiaryEntry.new("title", "hello this is content")
            diary_entry.reading_chunk(2, 1)
            chunk = diary_entry.reading_chunk(2, 1)
            expect(chunk).to eq "is content"
        end

        context "when wpm is 0" do
            it "returns 'Error'" do
                diary_entry = DiaryEntry.new("title", "contents")
                expect{diary_entry.reading_chunk(0, 0)}.to raise_error "Error"
            end
        end
    end
end
