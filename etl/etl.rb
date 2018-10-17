class ETL
    def self.transform old
        new = Hash.new
        old.each do |key, value|
            value.map { |x| new[x.downcase] = key}
        end
        new
    end
end