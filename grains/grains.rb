class Grains
    def self.square n
        if 1 <= n && n <=64 && n.is_a?(Integer)
            2 ** (n-1)
        else
            raise ArgumentError.new "n must be an integer between 1 and 64"
        end
    end

    def self.total
        (1..64)
        .map { |n| Grains.square n }
        .sum
    end
end