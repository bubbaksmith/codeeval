# Given a number n and two integers p1,p2 determine if the bits in position p1 and p2 are the same or not. Positions p1 and p2 are 1 based.

File.open(ARGV[0]).each_line do |line|
	num = line.split(',')[0].to_i
	p1  = line.split(',')[1].to_i
	p2  = line.split(',')[2].to_i
	puts num.to_s(2)[-p1] == num.to_s(2)[-p2] ? 'true' : 'false'
end
