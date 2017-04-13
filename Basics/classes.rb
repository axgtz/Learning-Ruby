#Ruby File totorial Classes and instance of classes in other classes
class Point
  #Attributes with the single @ are protected in classes, it means same as in java or c++, as only accessesd by class and subclass

  #Constructor, initialize es un metodo especial
  def initialize(x,y)
    @x,@y = x, y
  end

  #Getters, one way to define it:
  def getX() @x end
  def getY() @y end

  #Setters
  def setX(x) @x = x end
  def setY(y) @y = y end

  #Imprimir, To string
    #Override te standard method
  def to_s
    "(#{@x}, #{@y})"
  end
end

#Clase que hace uso de otra clase
class Line

  #Constructor
    #Se van a pasar dos puntos de parametros para la clase linea
  def initialize(p1,p2)
    @start, @end = p1, p2

    #Distancia entre 2 puntos
    @dx = Math.sqrt((@start.getX - @end.getX)**2) #Distancia de X, se sube a potencia de dos y se saca la raiz para que todos los numeros sean positivos, pero no es eficiente
    @dy = Math.sqrt((@start.getY - @end.getY)**2) #Distancia de Y
  end

  #Getters
  def getDX() @dx end
  def getDY() @dy end

  #Hace uso del teorema de pitagoras
  def length
    Math.sqrt(@dx**2 + @dy**2 )
  end

  def slope
    if @dx == 0 then
      puts "La pendiente no esta definida, ya que la distancia de x es cero"
    else#En teoria no deberia usar rescue porque se checa la probabilidad antes, solo esta para mostrar como se usa
      #rescue sirve para evitar errores, en este caso evita que se divida entre 0
      @dy/@dx rescue puts "Slope es undefined, y podria ser 0 y el slope se vuelve infinito"
    end
  end

end

#Instanciar clases
point1 = Point.new(3,2)
point2 = Point.new(3,0)

line = Line.new(point1,point2)

puts "Line from #{point1.to_s} to #{point2.to_s}"

puts "Longtud de componente X: #{line.getDX}"
puts "Longtud de componente Y: #{line.getDY}"

puts "Slope: #{line.slope}"
puts "Total Length: #{line.length}"

#change point1, pero linea no cambia, se tendria que hacer una nueva linea para adaptar los cambios en punto
point1.setX(4)
point1.setY(5)

puts "Line from #{point1.to_s} to #{point2.to_s}"