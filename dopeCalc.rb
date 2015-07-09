# Elite Calculator 1.0
#Functions: Addition, subtraction, division, multiplication, temperature conversion, absolute value, tip calculator
#--- PREP ---
def add(n1,n2)
  n1 + n2
end

def subtract(n1,n2)
  n1-n2
end

def divide(n1,n2)
  n1/n2
end

def multiply(n1,n2)
  n1*n2
end

def abs(n1)
  n1.abs
end

def tempcon(n1)
      def c_to_f(temp)
      (temp.to_f*9)/5+32
    end

    def f_to_c(temp)
      (temp.to_f-32)*5/9
    end
  
  while true
    puts "Did you input Celsius or Fahrenheit? Type C or F"
    corf=gets.chomp
    if corf == "c" or corf == "C"
      puts c_to_f(n1)
      break
    else if corf == "f" or corf == "F"
      puts f_to_c(n1)
      break
    else
      "I'm sorry I do not understand"
    end
  end
  end
end

def tip(n1,n2)
  (n1*(n2/100)).round(2)
end

def pwr(n1,n2)
  n1**n2
end

rt = 0

running = true
#--- RUNNING ---
while running == true #<= gets input from user
  puts "What function would you like: ex. * + - / abs temp tip pwr"
  func = gets.chomp
    if func == "abs"
      puts "Please input number 1"
      n1 = gets.chomp.to_f
    elsif  func == "temp"
      puts "Please input the temperature"
      n1 = gets.chomp.to_f
    elsif func == "tip"
      puts "Enter cost of the bill"
      n1 = gets.chomp.to_f
      puts "Enter the percent to tip: ex 18"
      n2 = gets.chomp.to_f
    elsif func == "pwr"
      puts "Enter the base number"
      n1 = gets.chomp.to_f
      puts "Enter the power to raise it to"
      n2 = gets.chomp.to_f
    else
      puts "Please input number 1"
      n1 = gets.chomp.to_f
      puts "Please input number 2"
      n2 = gets.chomp.to_f
    end

 
  if func == "+"    #<= checks what function to perform
    puts add(n1,n2)
    
    elsif func == "-"
    puts subtract(n1,n2)
    
    elsif func == "temp"
    puts tempcon(n1)
    
    elsif func == "/"
    puts divide(n1,n2)
    
    elsif func == "*"
    puts multiply(n1,n2)
   
    elsif func == "abs"
    puts abs(n1)
    
    elsif func == "tip"
    puts tip(n1,n2)
    
    elsif func == "pwr"
    puts pwr(n1,n2)
    
  else
    puts "I do not recognize that command"
  end
  
  puts "Would you like to continue? Y/N"
  response = gets.chomp
  if response.upcase == "Y" 
    next
  else
    break
  end
end
  