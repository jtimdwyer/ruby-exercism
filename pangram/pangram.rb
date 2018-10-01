require 'set'
class Pangram
    def self.pangram?(sentence)
        (
            sentence
            .downcase
            .gsub(/[^a-z]+/, '')
            .split('')
            .to_set
            .length == 26
        )
    end
end
