puts "Reading data from file ..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
print "The result is "
print fahrenheit
puts "."