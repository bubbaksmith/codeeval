# You’ve got a binary code which has to be buried among words in order 
# to unconsciously pass the cipher. 

# Create a program that would cover the word with a binary mask. 
# If, while covering, a letter finds itself as 1, you have to change its 
# register to the upper one, if it’s 0, leave it as it is. Words are always 
# in lower case and in the same row with the binary mask.

File.open(ARGV[0]).each_line do |line|
    word = line.split[0]
	mask = line.split[1]
	word.each_char.with_index do |char, i|
		print mask[i] == '1' ? char.upcase : char
	end
	print "\n"
end