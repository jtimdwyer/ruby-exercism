class Brackets
    def self.paired? expr
        close_to_open = { ")" => "(", "}" => "{", "]" => "[", }

        open_chars = close_to_open.values
        close_chars = close_to_open.keys

        open_list = []

        expr.chars.each do |c|
            if open_chars.include? c
                open_list.push c
            elsif close_chars.include? c
                return false unless close_to_open[c] == open_list.pop
            end
        end
        open_list.empty?
    end
end