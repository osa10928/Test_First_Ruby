def echo (n)
	return n
end

def shout (n)
	return n.upcase
end

def repeat (n, i = 2)
	answer = (("#{n} ")*i).strip
end

def start_of_word(s, n)
	l = 0
	answer = ""
	while l < n
		answer += s[l]
		l +=1
	end
	return answer
end

def first_word (s)
	return (s.split(/\s+/)).first
end

def titleize (s)
	l = ""
	small = ["and", "to", "but", "or", "with", "in", "at", "a", "the", "over"]
	array = []
	array = s.split(/\s/)
	array.map!do |i|
		if small.include?(i) 
			i
		else
			i.capitalize
		end
	end
	
	l = array.join(" ")
	return l.slice(0,1).capitalize + l.slice(1..l.length)
end