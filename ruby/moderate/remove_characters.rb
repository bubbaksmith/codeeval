# https://www.codeeval.com/open_challenges/13/

# Write a program which finds the first non-repeated character in a string.

File.open(ARGV[0]).each_line do |line|
# require 'colorize'
# require 'debugger2'
# require 'byebug'
# File.open('/Users/brian/codeeval/input.txt').each_line do |line|
	next if line.empty?

	string  = line.split(', ')[0]
	extract = line.split(', ')[1]

	extract.each_char do |char|
		string.gsub!(char,'')
	end
	puts string

end