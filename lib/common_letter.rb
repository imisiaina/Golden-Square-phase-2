def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
      counter[char] += 1
      p counter
    end
    most = counter.to_a.sort_by { |k, v| v }[-2][0]
    p counter.to_a
    #p counter.to_a.sort_by { |k, v| v }
    puts most
  end
  
  get_most_common_letter("the roof, the roof, the roof is on fire!")

  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
  