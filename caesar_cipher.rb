def caesar_cipher(string, shift)
    as_bytes = string.bytes
    p as_bytes

     result = string.bytes.map do |num|
        if (97..122).member?(num) || (65..90).member?(num)
            if num == 122
                num = 96
            elsif num == 90
                num = 121
            end

            (num + shift).chr
        else
            num.chr
        end
    end

    return result.join
end

# caesar_cipher "david appohz", 4