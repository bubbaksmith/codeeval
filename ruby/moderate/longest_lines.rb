# Your program should accept a path to a file as its first argument. The file contains multiple lines. 
# The first line indicates the number of lines you should output, the other lines are of different length 
# and are presented randomly. You may assume that the input file is formatted correctly and the number in 
# the first line is a valid positive integer.

# require 'colorize'
arr = []
num = nil
File.open(ARGV[0]).each_line do |line|
# File.open('/Users/brian/codeeval/input.txt').each_line do |line|

	# ignore blank lines
	next if line.empty?

	# line.gsub!("\n",'')
	# print "line = #{line}\n".cyan

	# save 'N' (num)
	(num = line.to_i; next) if (line[/\d/] and arr.empty?)

	# insert first entry
	arr << line if arr.empty?
	# print "Arr = #{arr}\n"

	arr.each_with_index do |a,i|
		# print "a = #{a}\n"
		# print "i = #{i}\n"
		(arr.insert(i,line); break) if line.size > a.size
	end
	arr << line unless arr.include?(line)

end

# print "Arr Final = #{arr}\n".green
(0..num-1).each {|n| puts arr[n]}