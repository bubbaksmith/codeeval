# Players generally sit in a circle. The first player says the number “1”, and each player says next number in turn. However, any number divisible by X (for example, three) is replaced by the word fizz, and any divisible by Y (for example, five) by the word buzz. Numbers divisible by both become fizz buzz. A player who hesitates, or makes a mistake is eliminated from the game.

# Write a program that prints out the final series of numbers where those divisible by X, Y and both are replaced by “F” for fizz, “B” for buzz and “FB” for fizz buzz.

File.open(ARGV[0]).each_line do |line|
	f   = line.split[0].to_i
	b   = line.split[1].to_i
	max = line.split[2].to_i
	# puts "f   = #{f}"
	# puts "b   = #{b}"
	# puts "max = #{max}"
	(1..max).each do |n|
		# puts "n = #{n}"
		char = ''
		char << 'F' if n%f==0
		char << 'B' if n%b==0
		char << n.to_s if char.size==0
		print char + ' '
	end
	print "\n"
end
