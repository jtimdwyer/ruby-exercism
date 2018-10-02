class Complement
    def self.of_dna(rna)
        hash = {
            "G" => "C",
            "C" => "G",
            "T" => "A",
            "A" => "U",
        }
        out = []
        for c in rna.split('')
            out.push hash[c]
        end
        out.join('')
    end
end