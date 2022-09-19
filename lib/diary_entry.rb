class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @furthest_word = 0
    end
  
    def title
      @title
    end
  
    def contents
      @contents
    end
  
    def count_words
        words.length
    end
  
    def reading_time(wpm) 
        (count_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes)  
        fail "Error" if wpm == 0
        num_of_readable_words = wpm * minutes
        start_from = @furthest_word
        end_at = @furthest_word + num_of_readable_words
        word_list = words[start_from, end_at]
        @furthest_word = end_at
        word_list.join(" ")
    
        # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end

    private
        def words
            return @contents.split(" ")
    end

    
end