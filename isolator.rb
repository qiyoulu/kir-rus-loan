
puts "Read file: "
text = (File.read gets.strip).split
words = Array.new
text.each do |word|
	if word.include? "*"
		next
	end
	if word.index "/"
		if word.index "<"
			word = word[((word.index "/") + 1) ... (word.index "<")]
		end
		words << word
	end
end
words.uniq!
text = words.join " "
text.gsub!(/[^\p{Cyrillic} ]/, "")
text.gsub!(/\s\s+/, "")
puts text
puts "Write file: "
File.open(gets.strip, "w+") do |file|
	file.write(text)
end