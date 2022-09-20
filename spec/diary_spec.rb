require 'diary'

RSpec.describe 'Diary' do
    context 'When given an entry' do
        it "adds the entry to the list" do
            diary = Diary.new
            diary.add("Test artist")
            expect("Test artist").to eq "Test artist"
        end
    end

    describe 'all' do
        it "returns the list of diary entries" do
            diary = Diary.new
            diary.add("Test artist")
            diary.add("Test2 artist2")
            diary.add("Test3 artist3")
            expect(diary.all).to eq "Entry: Test artist, Test2 artist2, Test3 artist3"
        end
    end

    describe 'count_words' do
        it "returns the number of words in all entries" do
            diary = Diary.new
            diary.add("Test artist")
            diary.add("Test2 artist2")
            diary.add("Test3 artist3")
            expect(diary.count_words).to eq 6
        end
    end

    describe 'reading_time' do
        it "returns an estimate of how long it takes the reader to read the text" do
            diary = Diary.new
            diary.add("Test artist")
            diary.add("Test2 artist2")
            diary.add("Test3 artist3")
            expect(diary.reading_time(200)).to eq 1
        end
    end

    describe 'find_best_entry_for_reading_time' do
        it "return the entries the user can read in a given time" do
            diary = Diary.new
            diary.add("Test artist")
            diary.add("Test2 artist2")
            diary.add("Test3 artist3")
            expect(diary.find_best_entry_for_reading_time(200, 1)).to eq "Test artist, Test2 artist2, Test3 artist3"
        end
    end
end