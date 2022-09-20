require 'diary'
require 'diary_entry'

RSpec.describe "Diary intergration" do
    context "when given an entry (string)" do
        it "adds an entry to the list" do
            diary = Diary.new 
            entry = DiaryEntry.new("Test", "Content")
            diary.add(entry)
        end
    end

    context "when all is called" do
        it "returns the list of entries" do
            diary = Diary.new
            entry = DiaryEntry.new("Test", "Content")
            diary.add(entry)
            expect(diary.all).to eq "Entry: #{entry}"
        end
    end 
    
    context "When count_words is called" do
        it "returns the word count of all the entries" do
            diary = Diary.new
            entry = DiaryEntry.new("Test", "Contents")
            diary.add(entry)
            diary.add(entry)
            diary.count_words
            expect(diary.count_words).to eq 2
        end
    end

    context "When reading_time is called" do
        it "returns an estimated reading time" do
            diary = Diary.new
            entry = DiaryEntry.new("Test", "Contents")
            diary.add(entry)
            diary.add(entry)
            expect(diary.reading_time(200)).to eq 1
        end
    end

    context "when best reading time is called" do
        it "return estimated entries the reader can read in a given time" do
            diary = Diary.new
            entry = DiaryEntry.new("Test", "Contents")
            diary.add(entry)
            expect(diary.find_best_entry_for_reading_time(20, 1)).to eq [entry]
        end
    end   
end