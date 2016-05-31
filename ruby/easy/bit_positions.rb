# Given a number n and two integers p1,p2 determine if the bits in position 
# p1 and p2 are the same or not. Positions p1 and p2 are 1 based.

File.open(ARGV[0]).each_line do |line|
	num = line.split(',')[0].to_i
	p1  = line.split(',')[1].to_i
	p2  = line.split(',')[2].to_i
	puts num.to_s(2)[-p1] == num.to_s(2)[-p2] ? 'true' : 'false'
end

# Input:
# 709993,5,18
# 786177,16,20
# 324064,9,16
# 526016,5,17
# 466045,6,11
# 366863,9,13
# 439450,4,5
# 462258,10,15
# 739037,11,13
# 603991,2,17
# 266376,12,19
# 773245,8,12
# 654332,17,18
# 161463,2,12
# 370060,6,11
# 853006,7,17
# 665493,14,17
# 877072,8,9
# 316636,8,16
# 975236,2,8

# Output:
# false
# true
# true
# true
# true
# true
# true
# true
# false
# true
# false
# false
# false
# false
# false
# false
# false
# true
# true
# false