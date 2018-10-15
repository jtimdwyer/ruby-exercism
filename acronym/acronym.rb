class Acronym
    def self.abbreviate long
        long
        .split(/[\s-]+/)
        .to_a
        .map do |w|
            w[0].upcase
        end
        .join
    end
end
