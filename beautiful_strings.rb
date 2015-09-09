# When John was a little kid he didn't have much to do. There was no internet, no Facebook, and no programs to hack on. So he did the only thing he could... he evaluated the beauty of strings in a quest to discover the most beautiful string in the world. 

# Given a string s, little Johnny defined the beauty of the string as the sum of the beauty of the letters in it. The beauty of each letter is an integer between 1 and 26, inclusive, and no two letters have the same beauty. Johnny doesn't care about whether letters are uppercase or lowercase, so that doesn't affect the beauty of a letter. (Uppercase 'F' is exactly as beautiful as lowercase 'f', for example.) 

# You're a student writing a report on the youth of this famous hacker. You found the string that Johnny considered most beautiful. What is the maximum possible beauty of this string?

File.open(ARGV[0]).each_line do |line|
	found = {}
	total = 0
	line.downcase!
	line.each_char do |char|
		next unless char =~ /[a-z]/
		found[char.to_sym] = line.count(char) unless found.has_key?(char.to_sym)
	end
	found.sort_by(&:last).reverse!.each_with_index do |(k,v),i|
		total += v*(26 - i)
	end
	puts total
end