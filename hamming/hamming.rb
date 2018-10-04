class Hamming
    def self.compute(s1, s2)
        unless s1.length == s2.length
            raise ArgumentError.new "Strands are not the same length!"
        else
            counter = 0
            for a, b in s1.chars.zip s2.chars
                unless a == b
                    counter += 1
                end
            end
            counter
        end
    end
end