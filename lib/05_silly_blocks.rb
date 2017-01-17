def reverser
	array = yield.split(/\s/)
	new_array = []

	array.map! do |i|
		new_array = new_array << i.reverse
	end
	return new_array.join(" ")
end

def adder(n = 1)
	yield + n
end

def repeater(n = nil)
	i = 1
	if n == nil
		return yield
	else
		while i <= n
			yield
			i+=1
		end
	end
end