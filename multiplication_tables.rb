# Print out the grade school multiplication table upto 12*12.

(1..12).each do |x|
    (1..12).each do |y|
        print '   ' if x==1 and y==1;print '%4.4s' % "#{x*y}"; print "\n" if y == 12
    end
end