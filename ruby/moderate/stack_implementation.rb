# https://www.codeeval.com/open_challenges/9/

# Write a program which implements a stack interface for integers. 
# The interface should have ‘push’ and ‘pop’ functions. 
# Your task is to ‘push’ a series of integers and then ‘pop’ and print every alternate integer.

class Stack

	attr_accessor :stack

	def initialize
		@stack = []
	end

	def pretty
		print " ___\n"
		@stack.each do |entry| 
			str = ""
			str << ' ' unless entry.include?('-')
			str << ' ' unless entry.to_i >= 10
			str << entry
			print "|#{str}|\n"
		end
		print " ---\n"
	end

	def push int
		@stack.insert(0,int)
	end

	def pop
		a, *b = @stack
		@stack = b
		a
	end

end


File.open(ARGV[0]).each_line do |line|
# require 'colorize'
# require 'debugger2'
# require 'byebug'
# File.open('/Users/brian/codeeval/input.txt').each_line do |line|
	next if line.empty?

	my_stack = Stack.new

	# Build the stack
	line.split(' ').each {|entry| my_stack.push entry}

	# print each alternating entry
	arr = []
	(0..my_stack.stack.size-1).each_with_index {|e,i| i.even? ? (arr << my_stack.pop) : my_stack.pop }
	print arr.join(' ') + "\n"

end