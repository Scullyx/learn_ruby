def translate(words)
    vowels = ["a", "e", "i", "o", "u"]
    words_arr = words.split(" ")
    for i in 0..words_arr.length-1
        if vowels.include?(words_arr[i][0])
            words_arr[i] << "ay"
        else
            if words_arr[i][1,2] == "qu"
                first_three = words_arr[i][0,3]
                words_arr[i][0,3] = ""
                words_arr[i] << first_three << "ay"
            elsif vowels.include?(words_arr[i][1]) # sadece ilk harf ünsüz
                if words_arr[i][0,2] == "qu"
                    first_two = words_arr[i][0,2]
                    words_arr[i][0,2] = ""
                    words_arr[i] << first_two << "ay"
                else
                    first = words_arr[i][0]
                    words_arr[i][0] = ""
                    words_arr[i] << first << "ay"
                end
            elsif vowels.include?(words_arr[i][1]) == false 
                if vowels.include?(words_arr[i][2]) # sadece ilk 2 harf ünsüz
                    first_two = words_arr[i][0,2]
                    words_arr[i][0,2] = ""
                    words_arr[i] << first_two << "ay" 
                else
                    first_three = words_arr[i][0,3] # ilk 3 harf ünsüz
                    words_arr[i][0,3] = ""
                    words_arr[i] << first_three << "ay"
                end
            end
        end
    end
    words = words_arr.join(" ")
end
