puts "Provide the value to convert and save in file:"
celsius = gets.chomp.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving the results into the file."
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close