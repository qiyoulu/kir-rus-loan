puts "Read file: "
file = gets.chomp
text = File.read file
text.gsub!("^./.<sent>$", "")
puts text
asterisks = text.count "*"
dollars = text.count "$"
puts "Dollars: #{dollars}"
puts "Asterisks: #{asterisks}"
puts "Dollars - Asterisks: #{dollars - asterisks}"
puts "Asterisks / Dollars: #{asterisks / dollars.to_f}"
puts "(Dollars - Asterisks) / Dollars: #{(dollars - asterisks) / dollars.to_f}"