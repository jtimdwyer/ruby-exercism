class PrimeFactors
    def self.for n
        factors = []
        unless n == 1
            (2..n).each do |p|
                while n % p == 0
                    n /= p
                    factors.push p
                end
                break if n == 1
            end
        end
        factors
    end
end