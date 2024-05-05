def substrings(master, dictionary)

    dictionary.reduce(Hash.new(0)) do | accumulator, word |
        accumulator[word] += master.downcase.scan(word).length if master.downcase.include?(word)
        accumulator
    end

end