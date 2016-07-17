dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, array)
  hash = Hash.new(0)
  text = string.downcase.split(" ")
  i = 0

  while i <= array.length-1
    text.each do |word|
      if word.include?(array[i]) == true
        hash[array[i]] += 1
      else
      end
    end
    i+=1
  end
  hash
end