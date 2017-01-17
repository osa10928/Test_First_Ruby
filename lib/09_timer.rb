class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		convert(@seconds)
	end


	def convert (sec)
		sec = @seconds
		Time.at(sec).utc.strftime("%H:%M:%S")
	end
		
end