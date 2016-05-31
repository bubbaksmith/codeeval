# Given a positive integer, find the sum of its constituent digits.

File.open(ARGV[0]).each_line do |line|
    r = 0
    line.to_s.split(//).each {|e|r+=e.to_i}
    puts r.to_s
end

# Input:
# 5981
# 1040
# 191
# 1085
# 5549
# 5743
# 7876
# 93
# 3951
# 6881
# 5766
# 3612
# 6161
# 8190
# 4349
# 5609
# 5064
# 6973
# 5521
# 3287

# Output:
# 23
# 5
# 11
# 14
# 23
# 19
# 28
# 12
# 18
# 23
# 24
# 12
# 14
# 18
# 20
# 20
# 15
# 25
# 13
# 20