puts "Reading the value..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving the converted value..."
fh = File.open("temp.out", "w")
fh.print celsius, " degres celsius equal to ", fahrenheit, " degres fahrenheit\n"

puts "Same goes for f to c ..."
fahrenheit = celsius
celsius = (fahrenheit - 32) * 5 / 9
fh << "celsius = #{celsius}"

fh.close