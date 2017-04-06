puts "Enter a number"
num = gets.to_f

#The statement modifier if and unless, put the condition after the statement to be evaluated
puts "Number that is not 5" unless num == 5

puts "Number that is 5" if num == 5

#Unless can also be used as a conditional statemen, corre la expresion si la condicional es falsa

unless num == 7
  puts "Unless: Your number is unlucky"
else
  puts "Unless: Your number is lucky"
end

#Unless es if != son equivalentes
if num != 7 then
  puts "If != : Your number is unlucky"
else
  puts "If != : Your number is lucky"
end

#Unless es el contrario de if ==
if num == 7 then
  puts "If == : Your number is unlucky"
else
  puts "If == : Your number is lucky"
end