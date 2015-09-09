# Print out the sum of integers read from a file.

r = 0
File.open(ARGV[0]).each_line do |line|
   r+=line.to_i
end
puts r