# https://www.codeeval.com/open_challenges/12/

# Write a program which finds the first non-repeated character in a string.

# File.open(ARGV[0]).each_line do |line|
# require 'colorize'
# require 'debugger2'
# require 'byebug'
File.open('/Users/brian/codeeval/input.txt').each_line do |line|
	next if line.empty?
	line.each_char {|char| (print char + "\n"; break) unless line[/#{char}\w*#{char}/] }
end