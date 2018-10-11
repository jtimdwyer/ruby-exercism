class Array
    def accumulate
        out = []
        self.each { |x| out.push yield x }
        out
    end
end
