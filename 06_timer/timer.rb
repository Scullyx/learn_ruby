class Timer
  #write your code here
    attr_accessor :seconds

    def seconds
        @seconds = 0
    end

    def show_digit(n)
        if n < 10
            digits = "0" + n.to_s
        else
            digits = n.to_s
        end
    end

    def time_string
        hour = @seconds / 3600
        minute = (@seconds / 60) % 60
        second = @seconds % 60

        show_digit(hour) + ":" + show_digit(minute) + ":" + show_digit(second)
    end
end
