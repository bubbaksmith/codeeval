# Write a program which reverses the words in an input sentence.

File.open(ARGV[0]).each_line do |line|
    arr = []
    line.split.each {|e| arr.unshift e}
    puts arr.join ' '
end

# Input:
# xCZAqJ WS 3pyuQThGD8 mmmIT
# sunt explicabo
# inventore veritatis et quasi architecto
# bZ4BKf2 pWiaghl 44WQRql8 vRLCTz5 q0xxip Gh9yU UX
# 1eFkP49fC43QOK CDTP wsiUrEpnx FY 5tBNSBFGhWhGOKlF0 He x
# PM9ODTW6 FhTWtVyXIJGQ mxzy
# accusantium doloremque laudantium totam
# dLMcUpIOeWnPQ UFy1WpUbBfSB q 3syJGike jx l9m3 eLQ4 sO7Je 6uDKVgrcG1WsIaZ5z
# bCF0wD1q 0ouzBzF7YYcBtgqzQlPg H jw9fme
# sed ut perspiciatis unde omnis
# rem aperiam eaque ipsa quae ab illo
# BVZLQWj sba3NBD nqpg Du5pYARUGPZ 6mxD HJY
# NqBTWuk2PFlAkL Ewdu m g TOy unjsjYrS AaM8mOBSnWp CWtmFuY0SWs qOC
# iZFZqXULjp6xX6aHo9hebMtT Eaq qL
# qJ1JUURhg6nsXwtDmeZ Fsqe2Rwm 9LBzFgqi LzDt l73fjdWGF D0hP46HtAGTUz0VifHwc
# iste natus error sit voluptatem
# Z sTQCqVM9ghW6 cE cj 6752GPnWY2rYu
# Av r edUnYCvptWEzQlqR094
# 8 H5KmEZy2uj9VkXrvgDt x09Ii BMF 8OfhpuYDrRSTVFtXu1MoWbzI8FV B7uG
# CAz9 jB06kUCVSwwKvP0SfiA kRdh bnn8QQBb

# Output:
# mmmIT 3pyuQThGD8 WS xCZAqJ
# explicabo sunt
# architecto quasi et veritatis inventore
# UX Gh9yU q0xxip vRLCTz5 44WQRql8 pWiaghl bZ4BKf2
# x He 5tBNSBFGhWhGOKlF0 FY wsiUrEpnx CDTP 1eFkP49fC43QOK
# mxzy FhTWtVyXIJGQ PM9ODTW6
# totam laudantium doloremque accusantium
# 6uDKVgrcG1WsIaZ5z sO7Je eLQ4 l9m3 jx 3syJGike q UFy1WpUbBfSB dLMcUpIOeWnPQ
# jw9fme H 0ouzBzF7YYcBtgqzQlPg bCF0wD1q
# omnis unde perspiciatis ut sed
# illo ab quae ipsa eaque aperiam rem
# HJY 6mxD Du5pYARUGPZ nqpg sba3NBD BVZLQWj
# qOC CWtmFuY0SWs AaM8mOBSnWp unjsjYrS TOy g m Ewdu NqBTWuk2PFlAkL
# qL Eaq iZFZqXULjp6xX6aHo9hebMtT
# D0hP46HtAGTUz0VifHwc l73fjdWGF LzDt 9LBzFgqi Fsqe2Rwm qJ1JUURhg6nsXwtDmeZ
# voluptatem sit error natus iste
# 6752GPnWY2rYu cj cE sTQCqVM9ghW6 Z
# edUnYCvptWEzQlqR094 r Av
# B7uG 8OfhpuYDrRSTVFtXu1MoWbzI8FV BMF x09Ii H5KmEZy2uj9VkXrvgDt 8
# bnn8QQBb kRdh jB06kUCVSwwKvP0SfiA CAz9