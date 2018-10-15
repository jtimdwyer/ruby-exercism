class Clock
    attr_accessor :hour, :minute

    def initialize hour:00, minute:00
        @hour = (hour + minute/60) % 24
        @minute = minute % 60
    end

    def to_s
        h_m = [@hour, @minute].map { |x| String(x)}
        h_m.each_with_index do |x, i|
            if x.length == 1
                h_m[i] = '0' + x
            end
        end
        .join ":"
    end

    def + add_time
        new_hour = self.hour + add_time.hour
        new_minute = self.minute + add_time.minute
        Clock.new(hour: new_hour, minute: new_minute)
    end

    def - subtract_time
        new_hour = self.hour - subtract_time.hour
        new_minute = self.minute - subtract_time.minute
        Clock.new(hour: new_hour, minute: new_minute)
    end

    def == compare_time
        self.hour == compare_time.hour &&
        self.minute == compare_time.minute
    end
end