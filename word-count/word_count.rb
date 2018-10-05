class Phrase
    def initialize(sentence)
        @sentence = sentence
    end

    def word_count
        words = (@sentence
                .downcase
                .gsub(/[^a-z\d']/, ' ')
                .split(' ')
                )

        words = (words
        .uniq
        .map { |x| [x, words.count(x)]}
        )

        out = Hash.new
        for k, v in words do
            quoted = k[0] == k[-1]
            quoted &= ["'", '"'].include? k[0]

            if quoted
                new_key = k[1..-2]
            else
                new_key = k
            end

            if out.keys.include? new_key
                out[new_key] += v
            else
                out[new_key] = v
            end

        end
        out
    end
end