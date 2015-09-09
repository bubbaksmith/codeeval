# Write a program which capitalizes the first letter of each word in a sentence.

File.open(ARGV[0]).each_line do |line|
    line.split.each do |word|
    	(print word + ' ';next) unless word[0]=~/\D/
    	print word[0].upcase + word[1..-1] + ' '
    end
    print "\n"
end