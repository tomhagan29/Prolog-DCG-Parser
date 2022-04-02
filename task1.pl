%% Task 1 - Write a DCG which parses input sentences and outputs a parse. 

s(s(NP, VP)) --> np(NP), vp(VP).

np(np(DET, NBAR, PP)) --> det(DET), nbar(NBAR), pp(PP).
np(np(DET, NBAR)) --> det(DET), nbar(NBAR).
np(np(NBAR, PP)) --> nbar(NBAR), pp(PP).
np(np(NBAR)) --> nbar(NBAR).
np(np(PRO)) --> pro(PRO).
np(np(PP)) --> pp(PP).

vp(vp(V, NP)) --> v(V), np(NP).
vp(vp(V)) --> v(V).

nbar(nbar(N)) --> n(N).
nbar(nbar(JP)) --> jp(JP).

pp(pp(PREP, NP)) --> prep(PREP), np(NP).

jp(jp(ADJ, JP)) --> adj(ADJ), jp(JP).
jp(jp(ADJ, N)) --> adj(ADJ), n(N).

det(det(Word)) --> [Word], {lex(Word, det)}.
pro(pro(Word)) --> [Word], {lex(Word, pro)}.
v(v(Word)) --> [Word], {lex(Word, v)}.
%% iv(iv(Word)) --> [Word], {lex(Word, iv)}.
adj(adj(Word)) --> [Word], {lex(Word, adj)}.
n(n(Word)) --> [Word], {lex(Word, n)}.
prep(prep(Word)) --> [Word], {lex(Word, prep)}.

lex(she, pro).
lex(knows, v).
lex(her, pro).
lex(the, det).
lex(woman, n).
lex(on, prep).
lex(two, det).
lex(in, prep).
lex(a, det).
lex(room, n).
lex(sees, v).
lex(tall, adj).
lex(young, adj).
lex(men, n).
lex(chairs, n).