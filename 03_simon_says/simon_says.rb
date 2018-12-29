#write your code here
def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, n=2)
	if n != 2
		word = x + " "
		word * (n-1) + x
	else
		x + " " + x
	end
end

def start_of_word(word, x)
	word[0..x-1]
end

def first_word(words)
	string = ""

	for i in 0..words.length-1
	  if words[i] == " "
		break
	  end
	  string << words[i]
	end
	string
end

def titleize(words)
	words_arr = words.split(" ")
	little_words = ["and", "or", "over", "the"]
	if words_arr.length == 1
		words = words.capitalize
	else
		0.upto words_arr.length-1 do |i|
			if little_words.include?(words_arr[i]) == false or i == 0
				words_arr[i] = words_arr[i].capitalize
			else
				next
			end
		end
		words = words_arr.join(" ")
	end
	words
end

