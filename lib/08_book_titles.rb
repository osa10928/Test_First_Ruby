class Book
  attr_accessor :title

  def title
  	titleize(@title)
  end

  private

  def titleize (s)
	l = ""
	small = ["and", "to", "but", "or", "with", "in", "at", "a", "the", "over", "an", "of"]
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

end
