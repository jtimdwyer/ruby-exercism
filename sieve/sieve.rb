class Sieve
    def initialize(n)
        @n = n
    end


    def primes
        out = (2..@n).to_a
        for i in 2..Integer(@n ** 0.5) do
            remove = 2 * i
            while remove <= @n do
                out.delete remove
                remove += i
            end
        end
        out
    end
end