def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    ciphertext_chars = plaintext.chars.map do |char|
        p char
        p cipher.find_index(char)
      (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
    #p "this is the #{ciphertext_chars}"
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    #p cipher
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[char.ord - 65]
      #p char
      #p char.ord

    end
    return plaintext_chars.join
  end

  puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  
  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"