# When John was a little kid he didn't have much to do. There was no internet, 
# no Facebook, and no programs to hack on. So he did the only thing he could... 
# he evaluated the beauty of strings in a quest to discover the most beautiful 
# string in the world. 

# Given a string s, little Johnny defined the beauty of the string as the sum 
# of the beauty of the letters in it. The beauty of each letter is an integer 
# between 1 and 26, inclusive, and no two letters have the same beauty. Johnny 
# doesn't care about whether letters are uppercase or lowercase, so that doesn't 
# affect the beauty of a letter. (Uppercase 'F' is exactly as beautiful as 
# lowercase 'f', for example.) 

# You're a student writing a report on the youth of this famous hacker. You 
# found the string that Johnny considered most beautiful. What is the maximum 
# possible beauty of this string?

File.open(ARGV[0]).each_line do |line|
	found = {}
	total = 0
	line.downcase!
	line.each_char do |char|
		next unless char =~ /[a-z]/
		found[char.to_sym] = line.count(char) unless found.has_key?(char.to_sym)
	end
	found.sort_by(&:last).reverse!.each_with_index do |(k,v),i|
		total += v*(26 - i)
	end
	puts total
end

# Input:
# DVCyjL1 .H*$&#P*#%J# T,+oDAWPR3D"]*}O|\$tZ/P5[,jn&@<6W?RYb>,ks!"Ck]&R"'XMV29;'P=N" nfu(ds*i/X&EXP]QfIx7g'qO".#aye0=b~m.vZ7n&d|2qY>)2.`w>=W%ePVq3 m;WUxDKGT~C&-V~(._!@gqjb$)eLUr9+f><n=RQ'I%9Z$kpDgpcJscl1aMK^\wGMNdu4'l!|by4*@XZ999jGUjJ8@6ZDTWw6}M8rmHyP.3d;|P/@mOZ{'<en2%%Y:L{^l|8i^0ZikGqx(T.iS?Eqcesey^+_gXY#A$ua`GW}7)8`2oGA0ewVcN{}>I(u5loTn@9;]}21d>3"e%>bIdBwR|Pyq1O!1]B,JaxM
# h1n,JIwonp9Q?%0Qv4+2U/b;?bS=%W<C3*!="^'f0_@uH81=LRL_[:Vj$lQFH/R:e*>>4A;8@DKzu~wwnd\Q>E\~r%|RtP%~DL{dggK4kBns[xS6Ufp~w!y C3H0&W.lL*7&oywa?/v0aVSyiPc@
# 0v[+K(&~7qz]]]pMW^eMm[ )\/rd2v<Y/4%5s^{cRu.o[PiU*ap#dTppTUl`on*8$lb~Ac7lJOtAYjgphB603%PM@#)DTzg 5o9waAdky}@f^e|9[%.0:G!U'-hCOjuXJ0BZ>@; e(l-SWaH1c|I\nEpPK~o:dO!C-n/?}38\Rv>mnq^Wa &Lsel|o.ixJkzb]EN{rF~C"o"Qf/u&Cw9~uo_#TMS<4$AlSAGUjIS(UVp*I)uFB+LoAF+O!jM5:]{Rc= ?K!OEX@Xn2Z4=q9nBhk<d$xhT(k}Q9!B5LO7I=i/@9;6+MV&N"c&L}aTv8[a'
# }_!_djvZCl[0.U.Zo=EIROppIEZ hIK6_9BY%!%>NB&@7cCN+W=;f%ovEXV&^IK8_P(*3/S$!36C.P{rp3KF'A((h3kN|qE<3!`2xy{9J+.}7!,J3"P$bY`DHYh&FHygP5D#/FQ#g_{GjO&#vpwzm4+9k1U?e!>/x%QFH1y1,#F4^p\e/q3J84Z8_,z*1r7w9#pj5{B"c:TB=Ho-Q6c*"5H&8*-HcfVcU+Ha*rFt/@EV!a, -t.\RZN[{>b_G\=b/G`b*^jSB,2~q[uv(^,&A(U4JoY9HEf)4'|AzPIvD]]E|]w5">y"[nRIo$lcP>NTO.> q`E0u\Ur94^ fJt:P*"Z4XM..^2pewX=g#R[aCf:Es0_vk6'T5fSfjlS<"`;{BI~
# Good luck in the Facebook Hacker Cup this year!
# ,SS1pPq^0gKYhII&tE/q)g06#6Y)qU+g.{cdtu6=`Yd7qc?dBs8Q'd2,^Sl5||)!gxJ(n\P!yw1TOf#W&
# mcg'L3f~w#H4t0=T"}"q]i!>$$G0*Q`~eC01n}<&#K$JH!}ZvR+hT4UL6n)X7.Wsm=)sB:E\pd!nMJz^eK
# u%qRCr(N[*+vc^!TG-}N.GX{y0.C}pR+0y#B!$cs<o`p.Z94,@~$~n8pA.#h=Xhx"/B"UIBy}n M5>MJP&y:^N.(k-(LilC;DpaJ'3=XP"`%qoGMs^V#)+|Q4Ah%z9cyi knQ.)rT55MdM#r|@vR6|E}WpnW!Cxb~)HmM4Yd!9UN|?72W,/Gh8@N]]Ar1Qw%zqkS<]mC[qSw_)`
# XYEJpOFmtZS.XpvtWU
# ABbCcc
# Z:l@9..q=BrA/z:etE"{yoB2g9OHg -d=s&j{(ryXjQ54{ODSV\wGHh?Ac%{}[sW{1QH%Zd:;*wQX7@!]I'..!}-0ZL#9* \rUP`p"{Fln;^v{&b4 OiC_WkLj/]Axm"ba2+}1B\i ZImbAA,CdWFh|)!_:j4Xi,#2+U~]<O\lhPw+)T+adIynfbAx\d+]2|g7(z$frf~3YZ<N[GZmKZd2e+~/lY%;Le.=px]#6A%#_g2V`-a(}.QhYQ1X{tOIlwiEVYCB-hzH|`("83Z5eHJ.ii[ENj*onUWjX-CZ27>xM3n)?W20;~[SrLb^*vZW028(/@nU{0vtLJEc5+JBwWAc#P05w%m<KSQ4.N"ZA!j4C{L0@W|W~>W/~u.c2l@
# fTLw)6Ak^64~~e;6Z=)ax*'o9vN;G::"2]Q#='drC(t+^!AA-'.%.ko@@ASFi,~o'3o2t73b4U,iN|VKpJrrdWneBQ>Pp9@O;|YMNn4-Io>){F\G"<#sKVff[[7gJiX I|e]9>$G`0']w~H?QB~7.y%q=&w28Hl3pGGOm7wzhZ^gtKP:$jE-`<6Z3)+$ijF,5xi\p;0/O`{3UKEpr04eYyNd)P@u+(Rr4VR8A'$"cb5N2)6:lV6dI>R]%`A2Q}LI)y=uNJd<36%2>LB.+S]3Vj= >=]97
# M`b/v3~TAo22W[\0oibb08)qyLaM?9SX|j]0l!/*-$`(oi wj GaSTnJR V|4tQ-XzT`y]qmAq@NFeH! -%q{A@IuRCO/Hd\7+o+;l !M>;_UmiNbUdz{M%!PFZ-gyWM@;].2:EQ!06o #qk]KL^:EWiWXz=,xLPsP8:0<.'[W4+]F&h
# !N-_Y`Gu,-9M]},aZw$O}(NU5</,RE(7M`)T1V&[-{|9P<1|u2\L2U,3x^8_=DF]")RpQ|T1/Z\6Gm?:^#~#.ef|M~_fbpoptb[=;m\)B#q*ow,w`}MM*cum{~&hOEw&[%iXCppIK~6Vo#v)l|uT^Wr&g=pZaAJTZVuf74#'o[S|H06hCF#
# So I just go consult Professor Dalves
# o~`@Z619w\HwNYWtX;gwhru5.-31KKg_PdbDs-j[P/d^IrN?-@c@!uajKwpj9ZsZG]J;nhJDrosd8ux,NiBhf_z8\Qdc<T_Yo)icNJ/0M](TZ9f,gD{qhI4x&i]MWGP%M)U=8>L9}wLD8Oan9GySu2`J@W-J:n{1ZLL],pUs"+1^h"CJk>YSDS~[(*3[`&d+2?KbM|U}lC#s>x.&yxCb|CV;8^FZ)P'Ygyjg/&kvz0j\_F@D_@WF>m;qn["Fr!mv3PCjMTe6!Q/O~V[!<q@Y*'bX/}?X;$e^H9("A3F>/|W:(^dY"U;WVr3nPkWa#$a:nZBQT'?u%-I!n|@k]lkQYSJR?#nylAy#9(
# 9+3gaF^6Vc{,yLyhor UC]ZSTPD`!!R8FAxaJ=YiQ3o7boK)iDghgN|(I2B'rUR"
# A!Xa|btfW/pUR3vr]ffNFhZ*gcNCYiK?N-$$w`"%9OP"FhGLM>\HB/nUds)6 Zz'>G/B[#_5EzZic1{_$ NV0PK!{]3G!!s&n3)OwDO5v[fV<"IjtR">Sfx)b&eAyYhSg<}ag;oo5y@f7NgJUgna$1jI] z=D.kFoYT42mqJ87Sp!$Nq{Krfn5-[)HFH}Q9Ri)Ia[N(mC"K:CZ>LRLSJV_PDh?BI
# ^Yz)*~tGTrYjL'mz[}z|$<6$)P5wqoHMM~3wydK3rt(L&P^^?3R^L'`B%2s{,'p!0{Z"`<RN&NM{*PX(KK#SqdBq\7L+i<:C#HcX8dd@fh~gV0B*ku0/@S+&COFMd|w,T21SK0FWX<S8b=^S_*Zfr\_[%O+rv0kp+e2Fw-?gt:k11p0r#lHzR[{l9)_-#ylQtVBg )r8_:_@[mmjP%4-=[5}``F^Nt@p3Oj7pAODjukgdq[:<FAl{_C<'T)K5Vi~3mHUzc6vIRk[7J^0X XxoM~{PZX&]J6)jjo(.hym~ThHMNf].0dVX|8m[(364>P<Ds\4Qp#l:AE9&|CQT>H0*G/]>D{@GPn"-2p_P];L;l99{=YdF#'t!{pw<1G*!/)"3U\j4~%;$V8Q'="@G.9
# #X`-Lm5x~3U-]wl(/|cq\Q9]o $^%ST2[wK7]& )tp(sU~%|*G5@(WIlw9[k>Ob(A,e{+7h@6K<va*sidIT3,[}L~h-09Y1po*y&uM#LLt#~hjXpy{4AEF+IB3FBn^ufT>?ugq0BOPiI{tE9^7iF0G++&)OQ@zcPa=AkJtAvQ1T>p6"&$/5@

# Output:
# 3142
# 1356
# 2925
# 3215
# 754
# 874
# 738
# 1919
# 348
# 152
# 3353
# 2254
# 1572
# 1541
# 646
# 3238
# 758
# 2255
# 3314
# 1629