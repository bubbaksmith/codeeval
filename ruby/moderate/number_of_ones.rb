# https://www.codeeval.com/open_challenges/16/

# Write a program which determines the number of 1 bits in the internal representation of a given integer.

# File.open(ARGV[0]).each_line do |line|
# require 'colorize'
# require 'debugger2'
# require 'byebug'
File.open('/Users/brian/codeeval/input.txt').each_line do |line|
	next if line.empty?

	puts ("%b" % line.to_i).gsub('0','').size

end