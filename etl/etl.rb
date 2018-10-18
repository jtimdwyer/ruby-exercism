class ETL
    def self.transform old
        out = Hash.new
        old.each do |key, value|
            value.each { |x| out[x.downcase] = key}
        end
        out
    end
end