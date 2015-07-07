puts "Please input year 1"
year1=gets.chomp.to_i
puts "Please input year 2"
year2=gets.chomp.to_i+1
difference = year2-year1
counter = 0
leapYears = Array.new
def leapcalc(year1,year2) #Leapday Calculator
leapYears = Array.new
counter = 0
difference = year2-year1
while counter < difference
if (year1+counter).modulo(4) == 0  and (year1+counter).modulo(100)!=0
leapYears << year1+counter
end #end of if statement
counter+=1

end #end of while loop
puts leapYears
end
puts "The leap years are as follows:"
puts "****"
sleep 1.0
puts leapcalc(year1,year2)
