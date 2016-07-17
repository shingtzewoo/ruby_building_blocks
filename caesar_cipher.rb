def caesar_cipher(word, shift)
  split_words = word.split("") #splitting the word into seperate characters
  cipher = [] #where the split cipher will be placed

#shift2 is so that the original shift is not affected

  split_words.each do |letter|
    #for lowercase alphabets
    if (letter.ord <= 122 && letter.ord >= 97)
      letter = letter.ord + shift%26
      if letter > 122
        shift2 = letter - 122
        letter = 96
        letter = letter + shift2
      end
      new_char = letter.chr
      cipher << new_char
    #for uppercase alphabets
    elsif (letter.ord <= 90 && letter.ord >= 65)
      letter = letter.ord + shift%26
      if letter > 90
        shift2 = letter - 90
        letter = 64
        letter = letter + shift2
      end
      new_char = letter.chr
      cipher << new_char
    else
      cipher << letter
    end
  end
  joint_cipher = cipher.join("")
end
