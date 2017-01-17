def add (n1, n2)
	n1 + n2
end

def subtract(n1, n2)
	n1 - n2
end

def sum(n)
	array = n
	answer = 0
	array.each{|i| answer += i}
	answer
end


def multiply(*n)
	array = n
	answer = 1
	array.each{|i| answer *= i}
	answer
end

def power(n1, n2)
	n1 ** n2
end

def factorial(n)
	fact = 1

	if n == 0
		return 1
	end

	1.upto(n) {|i| fact *= i}

	fact
end


