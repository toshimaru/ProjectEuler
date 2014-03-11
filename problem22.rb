def wordToNum(word)
  word.each_byte.inject(0) {|sum, i| sum + (i - 64)}
end

s = File.read("./names.txt")
words = s.delete('"').split(",").sort
p words.inject(0) {|sum, word| sum + (wordToNum(word) * (words.index(word) + 1)) }
