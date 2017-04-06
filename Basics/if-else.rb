=begin
  if-else-rb

  Conditional Expressiones, ex: If
=end

#En ruby en este caso primero se evalua el == y luego el =.
test = 1==2

#Se transforma a string para imprimir
puts test.to_s

#Hay que usar parentesis para tener mejor control en la prioridad de la expresion

test = (2>=1)
puts test.to_s

puts "Mete un numero: "
num = gets.to_f

#if
if num>= 5 then
  puts num.to_s + " es mayor o igual a 5"
end


#if else
if num>= 5 then
  puts num.to_s + " es mayor o igual a 5"
else
  puts num.to_s + " es menor a 5"
end

#if else if
if num> 5 then
  puts num.to_s + " es mayor  a 5"
elsif num < 5
  puts num.to_s + " es menor a 5"
else
  puts num.to_s + " es igual a 5"
end