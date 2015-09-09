# Write a program which reverses the words in an input sentence.

File.open(ARGV[0]).each_line do |line|
    arr = []
    line.split.each {|e| arr.unshift e}
    puts arr.join ' '
end