class Fixnum

	#would have been better if I named the methods with words instead of all those 0's :(
	
    def in_words
		final = []
		num = self

		if self == 0
			return "zero"
		else 
			final = under_1_000_000_000_000_000(num)
		end

		return final.join(" ")
	end


    def under_1_000_000_000_000_000 (num)
		if num > 999_999_999_999 && num < 1_000_000_000_000_000
			trillion = num.to_s.slice(0...-12).to_i
			billions = num.to_s.slice(-12..-1).to_i
			final = under_1_000_000_000_000(trillion) + ["trillion"] + under_1_000_000_000_000(billions)
		end

		if num < 1_000_000_000_000
			final = under_1_000_000_000_000(num)
		end

		return final
	end
        
    def under_1_000_000_000_000 (num)
        if num > 999_999_999 && num < 1_000_000_000_000
        	billion = num.to_s.slice(0...-9).to_i
        	millions = num.to_s.slice(-9..-1).to_i
        	final = under_1_000_000_000(billion) + ["billion"] + under_1_000_000_000(millions)
        end

        if num < 1_000_000_000
        	final = under_1_000_000_000(num)
        end

        return final
	end

 

    def under_1_000_000_000 (num)  
		if num > 999_999 && num < 1_000_000_000
			million = num.to_s.slice(0...-6).to_i
			thousands = num.to_s.slice(-6..-1).to_i
			final = under_1_000_000(million) + ["million"] + under_1_000_000(thousands)
		end

		if num < 1_000_000
			final = under_1_000_000(num)
		end

		return final
	end

	def under_1_000_000 (num)
	    final = []
        
        #thousands
		if num > 999 && num < 1_000_000
			thousands = num.to_s.slice(0...-3).to_i
			less_than_thousand = num.to_s.slice(-3..-1).to_i
			final = under_1000(thousands) + ["thousand"] + under_1000(less_than_thousand)
		end
        
        #under 1000
		if num < 1000
			final = under_1000(num)
		end


		return final

	end

	def under_1000 (num)
		final = []

		if num > 899 && num < 1000
          final << "nine hundred" 
          num -= 900
        end
      
        if num > 799 && num < 900
          final << "eight hundred" 
          num -= 800
        end
      
        if num > 699 && num < 800
          final << "seven hundred" 
          num -= 700
        end
      
        if num > 599 && num < 700
          final << "six hundred" 
          num -= 600
        end
      
        if num > 499 && num < 600
          final << "five hundred" 
          num -= 500
        end
      
        if num > 399 && num < 500
          final << "four hundred" 
          num -= 400
        end
      
        if num > 299 && num < 400
          final << "three hundred" 
          num -= 300
        end
      
        if num > 199 && num < 300
          final << "two hundred" 
          num -= 200
        end

		if num > 99 && num < 200
          final << "one hundred" 
          num -= 100
        end
    
    
        if num > 89 && num < 100
          final << "ninety"
          num -= 90
        end
      
        if num > 79 && num < 90
          final << "eighty"
          num -= 80
        end
      
        if num > 69 && num < 80
          final << "seventy"
          num -= 70
        end
      
        if num > 59 && num < 70
          final << "sixty"
          num -= 60
        end
      
      
        if num > 49 && num < 60
          final << "fifty"
          num -= 50
        end
    
        if num > 39 && num < 50
          final << "forty"
          num -= 40
        end
    
    
        if num > 29 && num < 40
          final << "thirty"
          num -= 30
        end
    
        if num > 19 && num < 30
          final << "twenty"
          num -= 20
        end

		if num > 9 && num < 20
          final << "ten" if num == 10
          final << "eleven" if num == 11
          final << "twelve" if num == 12
          final << "thirteen" if num == 13
          final << "fourteen" if num == 14
          final << "fifteen" if num == 15
          final << "sixteen" if num == 16
          final << "seventeen" if num == 17
          final << "eighteen" if num == 18
          final << "nineteen" if num == 19
          num -= num
        end

	    final << "one" if num == 1
		final << "two" if num == 2
	    final << "three" if num == 3
		final << "four" if num == 4
		final << "five" if num == 5
		final << "six" if num == 6
		final << "seven" if num == 7
		final << "eight" if num == 8
		final << "nine" if num == 9

		return final	
    end
end