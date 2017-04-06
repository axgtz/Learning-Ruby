#Global variables begin with a $, se recomiendo no usar variables globales
$count = 0


while $count <= 5 do
  #El valor de una variable puede ser convertido en un string con "#
  puts "#$count"

  #Iterador para aumentar uno
  $count += 1
end

#Tambien existen las variables de instancia que son usadas en clases y cambian en cada instance de la clase
class Point
  def initialize(x,y)
    @x = x
    @y = y
  end
  def to_s
    "(x,y) = (#@x,#@y)"
  end
end

point = Point.new(5,-2)
puts point.to_s

=begin
Existen tambien las variables de clases que siempren tienen el mismo valor en diferentes instancias de un objeto
Son denotadas por un doble @@
=end

class Counter
  @@instance_count = 0
  def initialize
    @@instance_count+= 1
  end

  def how_many
    puts "Number of instances of Counter: #@@instance_count"
  end
end

counter1 = Counter.new
counter2 = Counter.new
counter1.how_many

counter3 = Counter.new
counter4 = Counter.new
counter4.how_many


#Las variables locales, son las tipicas como:
num = 5
puts num.to_s