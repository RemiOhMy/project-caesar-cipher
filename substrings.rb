def substrings(string, dictionary)
    list = Hash.new(0)

    dictionary.each do |word|
        # Only add the word into the hash if it actually occurs in the provided string
        if (string.scan(/#{word}/).length > 0)
            list[word] = string.scan(/#{word}/).length
        end
    end

    list
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)