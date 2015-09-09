# Given numbers x and n, where n is a power of 2, print out the smallest 
# multiple of n which is greater than or equal to x. Do not use division or modulo operator.

File.open(ARGV[0]).each_line do |line|
	x = line.split(',')[0].to_i
	n = line.split(',')[1].to_i
	sum = n
	until n >= x do 
		n+=sum
	end
	puts n
end