class Matrix
    def initialize matr
        @matr = matr.split("\n").map do |r|
            r.split.map { |x| Integer x}
        end
    end

    def rows
        @matr
    end

    def columns
        r = @matr[0].length - 1
        c = @matr.length - 1
        (0..r).map do |i|
            (0..c).map { |j| @matr[j][i]}
        end
    end
end
