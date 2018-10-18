require 'set'

class PalindromeProducts
    attr_accessor :value, :factors
    def initialize p
        @value = p[0]
        @factors = p[1]
    end
end


class Palindromes
    attr_accessor :max_factor, :min_factor, :palindromes, :smallest, :largest
    def initialize max_factor:nil, min_factor: 1
        @max_factor = max_factor
        @min_factor = min_factor
        @palindromes = nil
        @largest = nil
        @smallest = nil
    end

    def generate
        seen = Hash.new
        ran = (self.min_factor..self.max_factor).to_a
        ran
        .product(ran)
        .each do |x, y|
            p = x * y
            if p.to_s == p.to_s.reverse
                if !seen.key? p
                    seen[p] = [[x,y].sort]
                elsif !seen[p].include? [x,y].sort
                    seen[p].push [x,y]
                end
            end
        end
        @smallest = PalindromeProducts.new seen.min
        @largest = PalindromeProducts.new seen.max
        nil
    end
end

x = Palindromes.new(max_factor: 99, min_factor: 10)
x.generate
x.smallest
x.largest