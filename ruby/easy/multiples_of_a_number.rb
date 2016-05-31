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

# Input:
# 574,32
# 1267,8
# 472,128
# 1138,256
# 583,64
# 501,2
# 868,16
# 2257,1024
# 710,4
# 1504,512

# Output:
# 576
# 1272
# 512
# 1280
# 640
# 502
# 880
# 3072
# 712
# 1536