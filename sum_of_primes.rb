# Write a program which determines the sum of the first 1000 prime numbers.

arr = []
i = 2
until arr.size == 1000 do
	arr << i if !(2..i/2).any? { |n| (i%n)==0 }
	i+=1
end
puts arr.map.inject(:+)

# Output:
# 3682913