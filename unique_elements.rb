# You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed.

File.open(ARGV[0]).each_line do |line|
    arr = []
    line.split(',').each do |entry|
    	arr << entry.gsub("\n",'') unless arr.include?(entry)
    end
    arr = arr[0..-2] if arr[-1] == arr[-2]
    puts arr.join(',')
end