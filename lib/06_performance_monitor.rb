def measure (n = 1)
	total = 0
	start_time = Time.now
	n.times do
		yield
	end
	end_time = Time.now
	elapsed_time = end_time - start_time
	total += elapsed_time
	average_time = total/n
end