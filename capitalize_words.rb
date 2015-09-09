# Write a program which capitalizes the first letter of each word in a sentence.

File.open(ARGV[0]).each_line do |line|
    line.split.each do |word|
    	(print word + ' ';next) unless word[0]=~/\D/
    	print word[0].upcase + word[1..-1] + ' '
    end
    print "\n"
end

# Input:
# cyY6 pjzE7A7HPYm k jc ai7uz uVYJvo LWEqC5j6ZSeWYPmkKA4DxU lad1
# Hello world!
# w Tlg GCV9fTdqY9 kE GX
# cD xrDaTnLDYKb z5bHq2EG0PCSJ Rnvvl
# a letter
# Cm6PkL 7jlCWUFcSJ szFvIkwXvO1KctixAWv Fmh ICp8 W17AfbP R
# PkK8 dgbIUKX1sm4 m7 UrfvxkuHviME6 Lvj7HEn0 L5FKX
# S6t6PRc0EJxXNNQT2yBvn zo4RmKDgVM jruf G X oMMDRusfUT79A9hhl Mz6FbxxC1
# apples, berries, oranges
# cTxrPt09C kf8We9BDz 8bJ4WTgByS S bdc SeYqtvrY 3YCtWhW WSKbA
# ZKlvpOXEliUqFdOBy tdQlV bCW4S5WmAfFZqR6ErfMsiz0 rEV0 0sF7VH Y
# FXC8l RD L Z VEbw ax 05dLu6W81UWN uuUDfKHb K
# v4HpR L8vwt P Mzm2 vU8AbQ GRFRF5ovemF WHb4JBAr
# zZorenVyZJYJ3LMikR1a4AsQM vfVR4dYTi80
# Jjv baVyTM m OF23ftrONLUocqRcxmbkAuY pZO48fynNMQc9OIzna S
# 45 TESTS
# 1st thing
# V Etj9Q cP E OtYzVQcMVb pzpUHljS8ggj5 DS bz
# javaScript language
# 9YnTNrJn 1hfkVzh48k6k8Cz

# Output:
# CyY6 PjzE7A7HPYm K Jc Ai7uz UVYJvo LWEqC5j6ZSeWYPmkKA4DxU Lad1 
# Hello World! 
# W Tlg GCV9fTdqY9 KE GX 
# CD XrDaTnLDYKb Z5bHq2EG0PCSJ Rnvvl 
# A Letter 
# Cm6PkL 7jlCWUFcSJ SzFvIkwXvO1KctixAWv Fmh ICp8 W17AfbP R 
# PkK8 DgbIUKX1sm4 M7 UrfvxkuHviME6 Lvj7HEn0 L5FKX 
# S6t6PRc0EJxXNNQT2yBvn Zo4RmKDgVM Jruf G X OMMDRusfUT79A9hhl Mz6FbxxC1 
# Apples, Berries, Oranges 
# CTxrPt09C Kf8We9BDz 8bJ4WTgByS S Bdc SeYqtvrY 3YCtWhW WSKbA 
# ZKlvpOXEliUqFdOBy TdQlV BCW4S5WmAfFZqR6ErfMsiz0 REV0 0sF7VH Y 
# FXC8l RD L Z VEbw Ax 05dLu6W81UWN UuUDfKHb K 
# V4HpR L8vwt P Mzm2 VU8AbQ GRFRF5ovemF WHb4JBAr 
# ZZorenVyZJYJ3LMikR1a4AsQM VfVR4dYTi80 
# Jjv BaVyTM M OF23ftrONLUocqRcxmbkAuY PZO48fynNMQc9OIzna S 
# 45 TESTS 
# 1st Thing 
# V Etj9Q CP E OtYzVQcMVb PzpUHljS8ggj5 DS Bz 
# JavaScript Language 
# 9YnTNrJn 1hfkVzh48k6k8Cz