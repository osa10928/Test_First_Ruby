class Dictionary
  # TODO: your code goes here!
  attr_accessor
  :d

  def initialize
  	@d = {}
  end

  def entries
  	@d

  end

  def add(newhash)
  		if newhash.is_a? String
  			@d[newhash] = nil
  		else
  			newhash.each do |k, v|
  			@d[k] = v
  			end
  		end
  end

  def keywords
  	key_array = []
  	@d.each{|k, v| key_array << k}
  	key_array.sort
  end

  def include?(key)
  	@d.has_key?(key) ? true : false
  end

  def find(word)
    a = @d.select{|k, v| if k[0..(word.length-1)] == word; k end}
    a.any? ? a : a.clear 
    a
  end

  def printable
      a = Hash[@d.sort_by{|k, v| k}] 
      b = a.each{|k, v| print %Q{[#{k}] "#{v}"\n}}
      b.to_s
  end
 
end
