def substrings(string, dictionary)
  list = Hash.new(0)

  dictionary.each do |word|
    # Only add the word into the hash if it actually occurs in the provided string
    list[word] = string.scan(/#{word}/).length if string.scan(/#{word}/).length > 0
  end

  list
end
