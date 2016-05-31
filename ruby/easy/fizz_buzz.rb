# Players generally sit in a circle. The first player says the number “1”, 
# and each player says next number in turn. However, any number divisible 
# by X (for example, three) is replaced by the word fizz, and any divisible 
# by Y (for example, five) by the word buzz. Numbers divisible by both become 
# fizz buzz. A player who hesitates, or makes a mistake is eliminated from the game.

# Write a program that prints out the final series of numbers where those 
# divisible by X, Y and both are replaced by “F” for fizz, “B” for buzz and “FB” 
# for fizz buzz.

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

# Input:
# 15 15 92
# 6 5 26
# 19 12 65
# 10 10 32
# 20 5 35
# 7 1 74
# 18 1 46
# 16 4 75
# 16 17 55
# 12 14 93
# 4 3 31
# 18 7 21
# 19 6 21
# 2 5 40
# 19 18 82
# 15 9 29
# 12 5 72
# 16 2 62
# 19 11 66
# 20 3 28

# Output:
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 FB 16 17 18 19 20 21 22 23 24 25 26 27 28 29 FB 31 32 33 34 35 36 37 38 39 40 41 42 43 44 FB 46 47 48 49 50 51 52 53 54 55 56 57 58 59 FB 61 62 63 64 65 66 67 68 69 70 71 72 73 74 FB 76 77 78 79 80 81 82 83 84 85 86 87 88 89 FB 91 92 
# 1 2 3 4 B F 7 8 9 B 11 F 13 14 B 16 17 F 19 B 21 22 23 F B 26 
# 1 2 3 4 5 6 7 8 9 10 11 B 13 14 15 16 17 18 F 20 21 22 23 B 25 26 27 28 29 30 31 32 33 34 35 B 37 F 39 40 41 42 43 44 45 46 47 B 49 50 51 52 53 54 55 56 F 58 59 B 61 62 63 64 65 
# 1 2 3 4 5 6 7 8 9 FB 11 12 13 14 15 16 17 18 19 FB 21 22 23 24 25 26 27 28 29 FB 31 32 
# 1 2 3 4 B 6 7 8 9 B 11 12 13 14 B 16 17 18 19 FB 21 22 23 24 B 26 27 28 29 B 31 32 33 34 B 
# B B B B B B FB B B B B B B FB B B B B B B FB B B B B B B FB B B B B B B FB B B B B B B FB B B B B B B FB B B B B B B FB B B B B B B FB B B B B B B FB B B B B 
# B B B B B B B B B B B B B B B B B FB B B B B B B B B B B B B B B B B B FB B B B B B B B B B B 
# 1 2 3 B 5 6 7 B 9 10 11 B 13 14 15 FB 17 18 19 B 21 22 23 B 25 26 27 B 29 30 31 FB 33 34 35 B 37 38 39 B 41 42 43 B 45 46 47 FB 49 50 51 B 53 54 55 B 57 58 59 B 61 62 63 FB 65 66 67 B 69 70 71 B 73 74 75 
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 F B 18 19 20 21 22 23 24 25 26 27 28 29 30 31 F 33 B 35 36 37 38 39 40 41 42 43 44 45 46 47 F 49 50 B 52 53 54 55 
# 1 2 3 4 5 6 7 8 9 10 11 F 13 B 15 16 17 18 19 20 21 22 23 F 25 26 27 B 29 30 31 32 33 34 35 F 37 38 39 40 41 B 43 44 45 46 47 F 49 50 51 52 53 54 55 B 57 58 59 F 61 62 63 64 65 66 67 68 69 B 71 F 73 74 75 76 77 78 79 80 81 82 83 FB 85 86 87 88 89 90 91 92 93 
# 1 2 B F 5 B 7 F B 10 11 FB 13 14 B F 17 B 19 F B 22 23 FB 25 26 B F 29 B 31 
# 1 2 3 4 5 6 B 8 9 10 11 12 13 B 15 16 17 F 19 20 B 
# 1 2 3 4 5 B 7 8 9 10 11 B 13 14 15 16 17 B F 20 21 
# 1 F 3 F B F 7 F 9 FB 11 F 13 F B F 17 F 19 FB 21 F 23 F B F 27 F 29 FB 31 F 33 F B F 37 F 39 FB 
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 B F 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 B 37 F 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 B 55 56 F 58 59 60 61 62 63 64 65 66 67 68 69 70 71 B 73 74 75 F 77 78 79 80 81 82 
# 1 2 3 4 5 6 7 8 B 10 11 12 13 14 F 16 17 B 19 20 21 22 23 24 25 26 B 28 29 
# 1 2 3 4 B 6 7 8 9 B 11 F 13 14 B 16 17 18 19 B 21 22 23 F B 26 27 28 29 B 31 32 33 34 B F 37 38 39 B 41 42 43 44 B 46 47 F 49 B 51 52 53 54 B 56 57 58 59 FB 61 62 63 64 B 66 67 68 69 B 71 F 
# 1 B 3 B 5 B 7 B 9 B 11 B 13 B 15 FB 17 B 19 B 21 B 23 B 25 B 27 B 29 B 31 FB 33 B 35 B 37 B 39 B 41 B 43 B 45 B 47 FB 49 B 51 B 53 B 55 B 57 B 59 B 61 B 
# 1 2 3 4 5 6 7 8 9 10 B 12 13 14 15 16 17 18 F 20 21 B 23 24 25 26 27 28 29 30 31 32 B 34 35 36 37 F 39 40 41 42 43 B 45 46 47 48 49 50 51 52 53 54 B 56 F 58 59 60 61 62 63 64 65 B 
# 1 2 B 4 5 B 7 8 B 10 11 B 13 14 B 16 17 B 19 F B 22 23 B 25 26 B 28