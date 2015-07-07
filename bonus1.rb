def c_to_f(temp)
  (temp.to_f*9)/5+32
end

def f_to_c(temp)
  (temp.to_f-32)*5/9
end


puts "Input Temperature"
temp=gets.chomp
while true
puts "Did you input Celsius or Fahrenheit? Type C or F"
corf=gets.chomp
if corf == "c" or corf == "C"
  puts c_to_f(temp)
  break
else if corf == "b" or corf == "B"
  puts f_to_c(temp)
  break
else
  puts "I'm sorry I do not understand"
end
end
end
