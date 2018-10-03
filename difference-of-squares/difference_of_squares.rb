class Squares
    def initialize(n)
        @n = n
    end

    def square_of_sum
        # (1..@n).sum ** 2
        (@n * (@n+1)/2) ** 2
    end

    def sum_of_squares
        # (1..@n).map { |x| x*x }.sum
        (@n * (@n + 1) * (2 * @n + 1))/6
    end

    def difference
        square_of_sum - sum_of_squares
    end
end
