class WordCounter
    def initialize word
        @word = word
    end

    def counter
        out = Hash.new
        @word
        .chars
        .each do |c|
            if out.key? c
                out[c] += 1
            else
                out[c] = 1
            end
        end
        out
    end
end

class Anagram
    def initialize source
        @source = source
        @counter = WordCounter.new(@source.downcase).counter
    end

    def match targets
        out = []
        targets.select do |x|
            WordCounter.new(x.downcase).counter ==
            @counter &&
            x.downcase !=
            @source.downcase
        end
    end
end