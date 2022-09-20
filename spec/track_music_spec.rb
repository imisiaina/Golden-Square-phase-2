require 'track_music'

RSpec.describe TrackMusic do
    context "when given an empty input" do
        it "raises an error message" do
            track = TrackMusic.new
            expect{track.add("")}.to raise_error "Please enter music!"
        end
    end

    context "when given a string(music)" do
        it "returns the string and adds it to a list" do
            track = TrackMusic.new
            expect(track.add("Wasted - Digga D")).to eq "Wasted - Digga D"
        end
    end

    describe 'list' do
        it "lists the music added" do
            track = TrackMusic.new
            track.add("Wasted - Digga D")
            track.add("Finesse - Buju")
            track.add("Test - music")
            expect(track.list).to eq "Music added: Wasted - Digga D, Finesse - Buju, Test - music"
        end
    end
end