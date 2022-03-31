s(s(NP, VP))   -->  np(NP, Num), vp(VP, Num).

np(np(DET, N), Num) -->  det(DET, Num), n(N, Num).
np(np(DET, N), Num) -->  n(N, Num).

vp(vp(V, NP), Num)   -->  v(V, Num), np(NP, _).
vp(vp(V), Num)      -->  v(V, Num).

det(det(the), _)  -->  [the].
det(det(a), singular)    -->  [a].
det(det(two), plural) -->[two].

n(n(woman), singular)    -->  [woman].
n(n(woman), plural)    -->  [women].
n(n(man), singular)      -->  [man].
n(n(men), plural)    -->  [men].

v(v(hires), singular)    -->  [hires].
v(v(hires), plural)    -->  [hire].