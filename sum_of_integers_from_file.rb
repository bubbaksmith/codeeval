# Print out the sum of integers read from a file.

r = 0
File.open(ARGV[0]).each_line do |line|
   r+=line.to_i
end
puts r

# Input:
# 8
# 3
# 10
# 2
# 4
# 4
# 7
# 4
# 6
# 2
# 3
# 6
# 5
# 5
# 10
# 4
# 4
# 8
# 1
# 2

# Output:
# 98