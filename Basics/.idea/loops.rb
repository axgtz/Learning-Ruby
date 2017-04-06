#While loop, se repite mientras la condicion sea true
$count_while = 0

puts "Variable global inicializada con: #$count_while"

puts "\nWhile Loop"
while $count_while < 5 do #El do es opcional a menos de que se escriba en una sola linea
  puts "#$count_while"
  $count_while += 1
end

#Do while loop, primero se ejecuta y luego se checa la condicion para ver si se repite
puts "\nDo while loop"
begin
  puts "#$count_while"
  $count_while += 1
end while $count_while < 5

#Until Loop, se repite hasta que la condicion sea true
puts "\nUntil loop"

$count_until = $count_while

until $count_until < 0 do #el do es opcional en este caso porque tenemos uuna nueva linea
  puts "#$count_until"
  $count_until -= 1
end

#Do Until Loop, se repite hasta que la condicion sea true pero la condicion se hace despues de que se ejecute
puts "\nDo Until loop"

begin
  puts "#$count_until"
  $count_until -= 1
end until $count_until < 0

=begin
For Loop, se usa ".." para hacer un inclusive range, en donde se incluyen los numeros 0 y 100
Si se quiere usar la i para imprimir se tienen que poner {}, porque se usa una variable local, tambien con una constante
=end
puts "\nFor loop"
for i in 0..10
  puts "#{i}"
end

#El operador ... excluye el ultimo numero pero si incluye el primero
