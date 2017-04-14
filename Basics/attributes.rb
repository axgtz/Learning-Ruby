class Point
  def initialize(x,y)#Constructor
    @x,@y = x,y
  end

  #Los attr no afectan el estatus de protected de las variables, son metodos
  #publicos para acceder a las variables de instancia como los normal getters

  #Las variables de instancia siempre estan protegidos

  #Otro estilo de getters, metodo solo permite lectura
  attr_reader:x  #Ahora se puede acceder al atributo x con .x
  attr_reader:y  #Regresa lo que y contenga

  #Otro tipo de setter, solo permite escritura
  attr_writer:x   # .x = ?
  attr_writer:y

  def to_s
    "(#{@x}, #{@y})"
  end
end

point = Point.new(2,-7)
puts "point is #{point.to_s}"

point.x = -1
point.y = 9

puts "new point is (#{point.x}, #{point.y})"

class ColorPoint
  def initialize(x, y , color)
    @x, @y, @color = x,y, color
  end

  #attr_accessor es como tener getter y setter, read-write access
  attr_accessor:color

  #En este caso solo se puede leer "x" y "y", no se pueden modificar, si se intentan
  #modificar sale un error
  attr_reader:x
  attr_reader:y

  def to_s
    "Coordinates: (#{@x}, #{@y}), Color = #{@color}"
  end
end

cP = ColorPoint.new(2,-5, "red")
puts "#{cP.to_s}"

cP.color = "blue"
puts "(#{cP.x}, #{cP.y}), #{cP.color}"




