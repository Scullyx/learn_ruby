#write your code here
def add (x,y)
	x+y
end

def subtract (x,y)
	x-y
end

def sum(arr)
	x = 0
	if arr.empty?
		0
	else
		for i in arr
			x += i
		end
		x
	end
end

def multiply(*numbers)
  result = 1
  for i in numbers
	result = result * i
  end
  result
end

def power(x,y)
	x**y
end

def factorial(x)
	if x == 0
		1
	end
	a = 1
	1.upto(x) do |i|
		a = a*i
	end
	a
end
