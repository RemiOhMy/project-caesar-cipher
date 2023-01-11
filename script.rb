def caesar_cipher(string, shift)
    cipher = []
    string.split("").each do |s|
        if (s.ord >= 65 && s.ord <= 90)
            if s.ord + shift <= 90
                cipher.push((s.ord + shift).chr)
            else
                cipher.push((s.ord + shift - 26).chr)
            end
        elsif s.ord >= 97 && s.ord <= 122
            if s.ord + shift <= 122
                cipher.push((s.ord + shift).chr)
            else
                cipher.push((s.ord + shift - 26).chr)
            end
        else
            cipher.push(s)
        end
    end
    cipher.join
end

p caesar_cipher("Wow!", 10)
p caesar_cipher("Is this correct, I wonder?", 5)