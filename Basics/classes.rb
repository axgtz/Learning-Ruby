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
    @dx = @start.getX - @end.getX #Distancia de X
    @dy = @start.getY - @end.getY #Distancia de Y
  end

  #HAce uso del teorema de pitagoras
  def length
    Math.sqrt(@dx**2 + @dy**2 )
  end

  def slope
    @dy/@dx
  end

end 