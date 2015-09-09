# Given a string write a program to convert it into lowercase.

File.open(ARGV[0]).each_line do |line|
    puts line.downcase
end

# Input:
# E,3,|iVs,4YfyqpN.:^9N$)3qajxP*%~ A]qMIHHukrU~q`\O75ZyWKaF5S6^R(m#6~]<f]G}:
# !h*0:Va$e,t>^<DJD9*ve]7}GyfXrn/Ii=
# )w@'nTFAjN;77}xLzR1#lVo3HO/C5mk[>#:XB!`F{n55,yQY-?l\H#Eh6l/Gl73ugbR;|mB<
# +i^{#FFM]/f[?RH#{E> 9g?3{9*Qk^<j'PYvQLjfrw8!IM7PyU4|8<-V9S@LhBcJ"<J#V$|$)OR
# [TuIol*Iqd1/*$'jOd;EZ7SEm
# S.A9;Cdxf6aY)fwTCjUw1Gnj'id
# k_};5so*0J5I$,:$Ibr+bb1#f!(fe"35ISn+-D&|Jt
# ?sAdCpPruZd4?_&u'+#];@RZSz~)XePM?Kf>]BFYWZ7~;
# [qFTc>WUWR&9s-5H:+Mti%9+()^*K+ySXJozg
# .0OXWkN`]e6h2Bo1m)0p,QXc2it4:=hGA'jv>G(QBZR:ySV2
# Quick Fox JUMps thE FencE
# vnw)u[[#4D8f"rhA?95=^kVrWydkgTZ7iMI{}KO*isR0mig=u6u*)c~awbj7@R*q
# v!))*}Tk@%&y[~ElG>$[mY>
# a^wk0[kM"l.X/|Avi2ZFg{z\i_t|gX.?7x@%.Yo"4B),xPTjacuL?)3~P4
# ){vybEq&39XxenF5@S-Mm@8qi4^0{EZveDF!41}Xdx}ze-t-km#vy&RJ_Q4yjxw'HXNG(1%~Jeh<
# 1s5:mwv3@t(1{ApF^;062MtoPQ(7aY8l2|8:`TwR',
# This is some text
# AlwaYS ALIvE
# HELLO CODEEVAL
# G{k-u$l[%#>Au%Gt1)M^ekWkU|i]RFm^-hKl`E3($7FpsKq$)\05?%aIuYcCms23l@G"j_

# Output:
# e,3,|ivs,4yfyqpn.:^9n$)3qajxp*%~ a]qmihhukru~q`\o75zywkaf5s6^r(m#6~]<f]g}:
# !h*0:va$e,t>^<djd9*ve]7}gyfxrn/ii=
# )w@'ntfajn;77}xlzr1#lvo3ho/c5mk[>#:xb!`f{n55,yqy-?l\h#eh6l/gl73ugbr;|mb<
# +i^{#ffm]/f[?rh#{e> 9g?3{9*qk^<j'pyvqljfrw8!im7pyu4|8<-v9s@lhbcj"<j#v$|$)or
# [tuiol*iqd1/*$'jod;ez7sem
# s.a9;cdxf6ay)fwtcjuw1gnj'id
# k_};5so*0j5i$,:$ibr+bb1#f!(fe"35isn+-d&|jt
# ?sadcppruzd4?_&u'+#];@rzsz~)xepm?kf>]bfywz7~;
# [qftc>wuwr&9s-5h:+mti%9+()^*k+ysxjozg
# .0oxwkn`]e6h2bo1m)0p,qxc2it4:=hga'jv>g(qbzr:ysv2
# quick fox jumps the fence
# vnw)u[[#4d8f"rha?95=^kvrwydkgtz7imi{}ko*isr0mig=u6u*)c~awbj7@r*q
# v!))*}tk@%&y[~elg>$[my>
# a^wk0[km"l.x/|avi2zfg{z\i_t|gx.?7x@%.yo"4b),xptjacul?)3~p4
# ){vybeq&39xxenf5@s-mm@8qi4^0{ezvedf!41}xdx}ze-t-km#vy&rj_q4yjxw'hxng(1%~jeh<
# 1s5:mwv3@t(1{apf^;062mtopq(7ay8l2|8:`twr',
# this is some text
# always alive
# hello codeeval
# g{k-u$l[%#>au%gt1)m^ekwku|i]rfm^-hkl`e3($7fpskq$)\05?%aiuyccms23l@g"j_