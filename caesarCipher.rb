endprogram = false
while endprogram == false
  #comment
puts "Input the string to encode"
userInput = gets.chomp
puts "Input shift"
shift = gets.chomp
ary = Array.new
messageArray = Array.new
ary = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"] #Defining alphabet array
encoded = Array.new

userLength = userInput.length

counter = 0
while counter < userLength
  messageArray << userInput[counter]
  counter+=1
end
counter = 0
while counter < userLength #scrubs through message
  counter2 = 0
  while counter2 < 26 #compares current letter to the alphabet array
    if messageArray[counter] = ary[counter2]
      encoded << messageArray[counter]
    end
    counter2+=1
  end
  counter+=1
end
counter = 0
counter2 = 0
final = ""
while counter < userLength
  final << encoded[counter+shift.to_i]
  counter+=1
end
puts final
puts "Would you like to code something else? Y/N"
  response = gets.chomp
  if response == "N" or response == "n"
endprogram = true
end
end
