class Array

	def sum
		if self.empty?
			return 0
		else
			ans = 0
			self.each {|i| ans += i}
			return ans
		end
	end

	def square
		if self.empty?
			return []
		else
			ans = []
			self.each {|i| ans << i*i}
			return ans
		end
	end

	def square!
		self.map! {|i| i*i}
	end

end