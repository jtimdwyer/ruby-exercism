class Crypto
    def initialize plain
        @plain = plain
        @norm = @plain.downcase.gsub(/[^a-z0-9]+/, "")
    end

    def find_dims
        r, c = 0, 0
        n = @norm.length
        while r * c < n
            c += 1
            r, c = c, r
        end
        [r, c].minmax
    end

    def ciphertext
        if @plain == ""
            ""
        else
            r, c = self.find_dims
            transposed_array = Array.new(c) {[]}
            (0..r-1).each do |i|
                row = @norm[i*c..(i+1)*c]
                row.concat " " * [0, c - row.length].max
                (0..(c-1)).each do |i|
                    transposed_array[i].push row[i]
                end
            end
            transposed_array
            .map { |r| r.join}
            .join " "
        end
    end
end