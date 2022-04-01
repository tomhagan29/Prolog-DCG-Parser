s(s(NP, VP)) --> np(NP), vp(VP).
np(np(DET, NBAR)) --> det(DET), nbar(NBAR).
np(np(PRO)) --> pro(PRO).
vp(vp(V, NP)) --> v(V), np(NP).
vp(vp(V)) --> v(V).
nbar(nbar(N)) --> n(N).
nbar(nbar(JP)) --> jp(JP).
pp(pp(PREP, NP)) --> prep(PREP), np(NP).
jp(jp(ADJ, N)) --> adj(ADJ), n(N).

det(det(Word)) --> [Word], {lex(Word, det)}.
pro(pro(Word)) --> [Word], {lex(Word, pro)}.
v(v(Word)) --> [Word], {lex(Word, v)}.
adj(adj(Word)) --> [Word], {lex(Word, adj)}.
n(n(Word)) --> [Word], {lex(Word, n)}.
prep(prep(Word)) --> [Word], {lex(Word, prep)}.

lex(the, det).
lex(chased, v).
lex(angry, adj).
lex(frightened, adj).
lex(little, adj).
lex(bear, n).
lex(squirrel, n).