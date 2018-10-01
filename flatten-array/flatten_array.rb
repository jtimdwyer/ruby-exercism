class FlattenArray
    def self.flatten(arr)
        out = []
        for entry in arr
            if entry.kind_of? Array
                out.concat self.flatten(entry)
            else
                if !entry.nil?
                    out.push entry
                end
            end
        end
        out
    end
end
