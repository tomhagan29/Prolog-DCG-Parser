%% Task 1 - Write a DCG which parses input sentences and outputs a parse. 

s(s(NP, VP)) --> np(NP), vp(VP).

np(np(DET, NBAR, PP)) --> det(DET), nbar(NBAR), pp(PP).
np(np(DET, NBAR)) --> det(DET), nbar(NBAR).
np(np(NBAR, PP)) --> nbar(NBAR), pp(PP).
np(np(NBAR)) --> nbar(NBAR).
np(np(PRO)) --> pro(PRO).
np(np(PP)) --> pp(PP).

vp(vp(TV, NP)) --> tv(TV), np(NP).
vp(vp(IV)) --> iv(IV).

nbar(nbar(N)) --> n(N).
nbar(nbar(JP)) --> jp(JP).

pp(pp(PREP, NP)) --> prep(PREP), np(NP).

jp(jp(ADJ, JP)) --> adj(ADJ), jp(JP).
jp(jp(ADJ, N)) --> adj(ADJ), n(N).

det(det(Word)) --> [Word], {lex(Word, det)}.
pro(pro(Word)) --> [Word], {lex(Word, pro)}.
tv(tv(Word)) --> [Word], {lex(Word, tv)}.
iv(iv(Word)) --> [Word], {lex(Word, iv)}.
adj(adj(Word)) --> [Word], {lex(Word, adj)}.
n(n(Word)) --> [Word], {lex(Word, n)}.
prep(prep(Word)) --> [Word], {lex(Word, prep)}.

%% Lexicons

%% Pronouns
lex(i,pro).
lex(you,pro).
lex(he,pro).
lex(she,pro).
lex(it,pro).
lex(we,pro).
lex(you,pro).
lex(they,pro).
lex(me,pro).
lex(you,pro).
lex(him,pro).
lex(her,pro).
lex(it,pro).
lex(us,pro).
lex(you,pro).
lex(them,pro).

%% Verbs
lex(know,tv).
lex(know,tv).
lex(knows,tv).
lex(know,tv).
lex(see,tv).
lex(see,tv).
lex(sees,tv).
lex(see,tv).
lex(hire,tv).
lex(hire,tv).
lex(hires,tv).
lex(hire,tv).
lex(fall,iv).
lex(fall,iv).
lex(falls,iv).
lex(fall,iv).
lex(sleep,iv).
lex(sleep,iv).
lex(sleeps,iv).
lex(sleep,iv).

%% Determiners
lex(the,det).
lex(a,det).
lex(two,det).

%% Nouns
lex(man,n).
lex(woman,n).
lex(apple,n).
lex(chair,n).
lex(room,n).
lex(men,n).
lex(women,n).
lex(apples,n).
lex(chairs,n).
lex(rooms,n).

%% Preposition
lex(on,prep).
lex(in,prep).
lex(under,prep).

%% Adjective
lex(old,adj).
lex(young,adj).
lex(red,adj).
lex(short,adj).
lex(tall,adj).