class Rectangle
  def initialize(w,h)
    @width, @height = w,h
  end

  def area
    @width * @height
  end

  def perimeter
    2*@width + 2*@height
  end

  def to_s
    "Height = #{@height}, Width  = #{@width}"
  end
end

r = Rectangle.new(2,4)

puts "Area = #{r.area}, Perimenter = #{r.perimeter}"
puts "#{r.to_s}"