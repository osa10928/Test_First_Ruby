class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :calculator, :v

	def initialize
		@calculator = []
		@v = nil

	end


	def push(x)
		@calculator = @calculator<<x
	end

	def plus
		raise "calculator is empty" if @calculator.size < 2
		@v = @calculator[@calculator.size-2] + @calculator[@calculator.size-1]
		@calculator.pop(2)
		@calculator = @calculator<<@v
	end

	def minus
		raise "calculator is empty" if @calculator.size < 2
		@v = @calculator[@calculator.size-2] - @calculator[@calculator.size-1]
		@calculator.pop(2)
		@calculator = @calculator<<@v
	end

	def divide
		raise "calculator is empty" if @calculator.size < 2
		@v = (@calculator[@calculator.size-2]).to_f / (@calculator[@calculator.size-1]).to_f
		@calculator.pop(2)
		@calculator = @calculator<<@v
	end

	def times
		raise "calculator is empty" if @calculator.size < 2
		@v = (@calculator[@calculator.size-2]).to_f * (@calculator[@calculator.size-1]).to_f
		@calculator.pop(2)
		@calculator = @calculator<<@v
	end

	def value
		@v
	end

	def tokens(s)
		s = s.split()
		s.map! {|i| 
			if i == "+"; i.to_sym; 
			elsif i == "-"; i.to_sym; 
			elsif i == "/"; i.to_sym;
			elsif i == "*"; i.to_sym;
			else i.to_i
			end}
	end

	def evaluate(s)
		s = tokens(s)
		answer = s.each {|i|
			if i == :+
				@calculator.plus
			elsif i == :-
				@calculator.minus
			elsif i == :*
				@calculator.times
			elsif i == :/
				@calculator.divide
			else @calculator << i
			end
		}
		answer.value
	end


end
