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

=begin
r = Rectangle.new(2,4)

puts "Area = #{r.area}, Perimenter = #{r.perimeter}"
puts "#{r.to_s}"

# "<" means "is a " = rectangle, square is a retangle
=end

#Square inherits from rectangle
class Square < Rectangle #Square recieves the rectangle as its parent
  def initialize(side)
    super(side, side)#Llamando a super, llamas al constructor de la clase padre
  end

  #Overrides the definition of perimiter of the parent
  def perimeter
    4*@width     #@width se hereda del parent
  end
end

rect = Rectangle.new(4,3)
puts "RECTANGLE"
puts "Area: #{rect.area}"
puts "Perimeter: #{rect.perimeter}"

sq = Square.new(5)
puts "\nSQUARE"
puts "Area: #{sq.area}"
puts "Perimeter: #{sq.perimeter}"
