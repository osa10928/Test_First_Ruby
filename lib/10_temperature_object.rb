class Temperature
  # TODO: your code goes here!
  attr_reader :options

  def initialize(options)
  		@options = options
  end

  def self.from_celsius(c)
    self.new(:c => c)
  end

  def self.from_fahrenheit(f)
    self.new(:f => f)
  end

  def in_fahrenheit
  		options[:f] ? options[:f]: conv_to_f(options[:c])
  end

  def in_celsius
  		options[:c] ? options[:c]: conv_to_c(options[:f])
  end

  

  def conv_to_f(c)
  		c = options[:c]
  		c*9.0/5.0+32
  end

  def conv_to_c(f)
  		f = options[:f]
  		(f - 32)*5/9
  end
end

class Celsius < Temperature
  def initialize(c)
    @c = c
  end
  def in_celsius
    @c
  end
  def in_fahrenheit
    @c*9.0/5.0+32
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f = f
  end
  def in_fahrenheit
    @f
  end
  def in_celsius
    (@f - 32)*5/9
  end
end

