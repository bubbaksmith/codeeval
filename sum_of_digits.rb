# Given a positive integer, find the sum of its constituent digits.

File.open(ARGV[0]).each_line do |line|
    r = 0
    line.to_s.split(//).each {|e|r+=e.to_i}
    puts r.to_s
end