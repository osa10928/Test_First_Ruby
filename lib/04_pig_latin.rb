def translate(s)
	vow = ["a", "e", "i", "o", "u"]
	array = s.split(/\s/)
	array.map! do |i|
		e = 0
		a = ""
		i.to_s
		while
			unless vow.include?(i[e])
				if (i[e] == "q") && (i[e+1] == "u")
					a = a + i[e]; i = i[1..-1]
				end
				a = a + i[e]
				i = i[1..-1]
			end
		end
		i = i + a + "ay"
	end
	return array.join(" ")
end
