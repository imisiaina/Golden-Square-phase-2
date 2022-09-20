class TrackMusic
    def initialize
        @music = []
    end

    def add(music)
        fail "Please enter music!" if music.empty?
        music_arr = @music.push(music)
        @music_list = music_arr.join(", ")
    end

    def list
        return "Music added: #{@music_list}"
    end
end
