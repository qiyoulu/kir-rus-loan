puts "Read file: "
text = File.read gets.strip
text.gsub!(/[^\p{Cyrillic} \n]/, "")
text.gsub!(/  +/, " ")
text.gsub!(/\n/, " ")
text.downcase!.strip
puts text
puts "Write file: "
File.write(gets.strip, text)