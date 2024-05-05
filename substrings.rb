def substrings(master, dictionary)

    dictionary.reduce(Hash.new(0)) do | accumulator, word |
        accumulator[word] += master.scan(word).length if master.include?(word)
        accumulator
    end

end