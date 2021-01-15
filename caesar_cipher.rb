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

def get_char_map(start, stop)
    char_map = {}
    (start..stop).to_a.each { |el| char_map[el] = el.ord }
    char_map
end

puts get_char_map "a", "z"
puts get_char_map "A", "Z"

p caesar_cipher "david appohz", 4