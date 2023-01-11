def caesar_cipher(string, shift)

    cipher = []
    string.split("").each do |s|
        ascii = s.ord
        # Uppercase A to Z
        if (ascii >= 65 && ascii <= 90)
            if ascii + shift <= 90
                cipher.push((ascii + shift).chr)
            else
                cipher.push((ascii + shift - 26).chr)
            end
        # Lowercase a to z
        elsif ascii >= 97 && ascii <= 122
            if ascii + shift <= 122
                cipher.push((ascii + shift).chr)
            else
                cipher.push((ascii + shift - 26).chr)
            end
        # If character is not A-Z or a-z, push the character directly into the array
        else
            cipher.push(s)
        end
    end
    cipher.join
end

p caesar_cipher("Wow!", 10)
p caesar_cipher("Is this correct, I wonder?", 5)