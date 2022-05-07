puts "Read file: "
text = File.read(gets.chomp).split
words = Array.new
text.each do |word|
	while word.rindex("/")
		word = word[0...(word.rindex("/"))]
	end
	words << word
end
text = words.join("\n")
text.gsub!(/[0-9a-zA-Z.,$^&*\(\)\/\-\'\"–]/, "")
puts "Write file: "
ret = File.open(gets.chomp)
File.write(ret, text)