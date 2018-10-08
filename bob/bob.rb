class Bob
    def self.hey remark
        yell = (
            remark == remark.upcase &&
            remark.count("a-zA-Z") > 0
        )
        question = remark.strip[-1] == "?"
        blank = remark.strip.length == 0

        if yell && question
            out = "Calm down, I know what I'm doing!"
        elsif yell && !question
            out = "Whoa, chill out!"
        elsif !yell && question
            out = "Sure."
        elsif blank
            out = "Fine. Be that way!"
        else
            out = "Whatever."
        end
        out
    end
end
