class Book
# write your code here
    attr_accessor :title

    def title
        title_arr = @title.split(" ")
        little_words = ["and", "or", "over", "the", "in", "of", "a", "an"]
        if title_arr.length == 1
            @title.capitalize
        else
            0.upto title_arr.length-1 do |i|
            if little_words.include?(title_arr[i]) == false or i == 0
                title_arr[i] = title_arr[i].capitalize
            else
                next
            end
        end
        title_arr.join(" ")
        end
    end
end

